import "package:logger/logger.dart";
import "package:ttr_app/core/models/city.dart";
import "package:ttr_app/core/models/route.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/models/destination_list.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/game_player.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/player_destination.dart";
import "package:ttr_app/core/models/game_config.dart";
import "package:ttr_app/core/repositories/i_game_data_repository.dart";
import "i_game_service.dart";

/// Implementation of game logic service.
class GameService implements IGameService {
  final IGameDataRepository _gameDataRepository;
  final GameConfig _config;
  final Logger _logger;

  List<City> _cities = [];
  List<Route> _routes = [];
  List<Destination> _allDestinations = [];

  bool _isInitialized = false;

  GameService({
    required IGameDataRepository gameDataRepository,
    required GameConfig config,
    required Logger logger,
  }) : _gameDataRepository = gameDataRepository,
       _config = config,
       _logger = logger;

  @override
  Future<void> initialize() async {
    if (_isInitialized) return;

    _logger.i("Initializing game data...");

    _cities = await _gameDataRepository.loadCities();
    _routes = await _gameDataRepository.loadRoutes();
    _allDestinations = await _gameDataRepository.loadDestinations();

    _isInitialized = true;

    _logger.i(
      "Game data initialized: ${_cities.length} cities, ${_routes.length} routes, ${_allDestinations.length} destinations",
    );
  }

  @override
  Game createGame(List<Player> selectedPlayers) {
    _ensureInitialized();

    final longDestinations = _allDestinations
        .where(
          (d) =>
              d.points >= _config.minLongDestinationPoints &&
              d.points <= _config.maxLongDestinationPoints,
        )
        .toList();

    final shortDestinations = _allDestinations
        .where(
          (d) =>
              d.points >= _config.minShortDestinationPoints &&
              d.points <= _config.maxShortDestinationPoints,
        )
        .toList();

    final gamePlayers = selectedPlayers
        .map((p) => GamePlayer(player: p, destinations: []))
        .toList();

    _logger.i(
      "Game created with ${gamePlayers.length} players, ${longDestinations.length} long destinations, ${shortDestinations.length} short destinations",
    );

    return Game(
      players: gamePlayers,
      availableLongDestinations: longDestinations,
      availableShortDestinations: shortDestinations,
    );
  }

  @override
  InitialDrawResult drawInitialDestinations(Game game) {
    _ensureInitialized();

    final longList = DestinationList(List.from(game.availableLongDestinations));
    final shortList = DestinationList(
      List.from(game.availableShortDestinations),
    );

    if (longList.isEmpty) {
      throw StateError("No long destinations available");
    }

    if (shortList.length < 3) {
      throw StateError("Not enough short destinations available");
    }

    final longDestination = longList.draw();

    final shortDestinations = <Destination>[];
    final tempShortList = DestinationList(List.from(shortList));
    for (var i = 0; i < 3; i++) {
      final dest = tempShortList.draw();
      shortDestinations.add(dest);
      tempShortList.remove(dest);
    }

    _logger.d(
      "Drew 1 long destination (${longDestination.points} pts) and 3 short destinations",
    );

    return InitialDrawResult(
      longDestination: longDestination,
      shortDestinations: shortDestinations,
    );
  }

  @override
  List<Destination> drawAdditionalDestinations(Game game, int count) {
    _ensureInitialized();

    final shortList = DestinationList(
      List.from(game.availableShortDestinations),
    );
    final drawn = <Destination>[];

    for (var i = 0; i < count && shortList.isNotEmpty; i++) {
      final destination = shortList.draw();
      drawn.add(destination);
      shortList.remove(destination);
    }

    _logger.d("Drew ${drawn.length} additional destinations");

    return drawn;
  }

  @override
  Game assignDestinations({
    required Game game,
    required String playerId,
    required Destination? longDestination,
    required List<Destination> shortDestinations,
  }) {
    final updatedPlayers = game.players.map((gp) {
      if (gp.player.id != playerId) return gp;

      final newDestinations = <PlayerDestination>[
        ...gp.destinations,
        if (longDestination != null)
          PlayerDestination(destination: longDestination),
        ...shortDestinations.map((d) => PlayerDestination(destination: d)),
      ];

      return gp.copyWith(destinations: newDestinations);
    }).toList();

    var updatedLongDestinations = List<Destination>.from(
      game.availableLongDestinations,
    );
    var updatedShortDestinations = List<Destination>.from(
      game.availableShortDestinations,
    );

    if (longDestination != null) {
      updatedLongDestinations.removeWhere(
        (d) =>
            d.departureCityId == longDestination.departureCityId &&
            d.arrivalCityId == longDestination.arrivalCityId,
      );
    }

    for (final dest in shortDestinations) {
      updatedShortDestinations.removeWhere(
        (d) =>
            d.departureCityId == dest.departureCityId &&
            d.arrivalCityId == dest.arrivalCityId,
      );
    }

    _logger.i(
      "Assigned ${shortDestinations.length + (longDestination != null ? 1 : 0)} destinations to player $playerId",
    );

    return game.copyWith(
      players: updatedPlayers,
      availableLongDestinations: updatedLongDestinations,
      availableShortDestinations: updatedShortDestinations,
    );
  }

  @override
  Game toggleDestinationCompletion({
    required Game game,
    required String playerId,
    required Destination destination,
  }) {
    final updatedPlayers = game.players.map((gp) {
      if (gp.player.id != playerId) return gp;

      final updatedDestinations = gp.destinations.map((pd) {
        if (pd.destination.departureCityId == destination.departureCityId &&
            pd.destination.arrivalCityId == destination.arrivalCityId) {
          return pd.copyWith(isCompleted: !pd.isCompleted);
        }
        return pd;
      }).toList();

      return gp.copyWith(destinations: updatedDestinations);
    }).toList();

    return game.copyWith(players: updatedPlayers);
  }

  void _ensureInitialized() {
    if (!_isInitialized) {
      throw StateError(
        "GameService must be initialized before use. Call initialize() first.",
      );
    }
  }
}
