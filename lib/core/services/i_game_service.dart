import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/destination.dart";

/// Result of initial destination draw.
class InitialDrawResult {
  final Destination longDestination;
  final List<Destination> shortDestinations;

  InitialDrawResult({
    required this.longDestination,
    required this.shortDestinations,
  });
}

/// Service interface for game logic.
abstract class IGameService {
  /// Initializes game data (must be called at app startup).
  Future<void> initialize();

  /// Creates a new game with selected players.
  Game createGame(List<Player> selectedPlayers);

  /// Draws initial destinations for a player (1 long + 3 short).
  InitialDrawResult drawInitialDestinations(Game game);

  /// Draws additional short destinations during game.
  List<Destination> drawAdditionalDestinations(Game game, int count);

  /// Assigns selected destinations to a player.
  Game assignDestinations({
    required Game game,
    required String playerId,
    required Destination? longDestination,
    required List<Destination> shortDestinations,
  });

  /// Toggles completion status of a player's destination.
  Game toggleDestinationCompletion({
    required Game game,
    required String playerId,
    required Destination destination,
  });
}
