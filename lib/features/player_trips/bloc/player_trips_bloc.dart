import "package:flutter_bloc/flutter_bloc.dart";
import "package:logger/logger.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/features/player_trips/bloc/player_trips_event.dart";
import "package:ttr_app/features/player_trips/bloc/player_trips_state.dart";

class PlayerTripsBloc extends Bloc<PlayerTripsEvent, PlayerTripsState> {
  final IGameService _gameService;
  final Logger _logger;
  Game _game;

  PlayerTripsBloc({
    required IGameService gameService,
    required Logger logger,
    required Game game,
    required String playerId,
  }) : _gameService = gameService,
       _logger = logger,
       _game = game,
       super(
         PlayerTripsState(
           game: game,
           gamePlayer: game.players.firstWhere(
             (gp) => gp.player.id == playerId,
           ),
         ),
       ) {
    on<PlayerTripsEvent>((event, emit) async {
      event.when(
        started: () => _onStarted(emit),
        toggleDestination: (destination) =>
            _onToggleDestination(destination, emit),
        drawAdditionalDestinations: () => _onDrawAdditionalDestinations(emit),
      );
    });
  }

  void _onStarted(Emitter<PlayerTripsState> emit) {
    _logger.i("Viewing trips for player ${state.gamePlayer.player.name}");
  }

  void _onToggleDestination(
    Destination destination,
    Emitter<PlayerTripsState> emit,
  ) {
    final updatedGame = _gameService.toggleDestinationCompletion(
      game: _game,
      playerId: state.gamePlayer.player.id,
      destination: destination,
    );

    _game = updatedGame;
    final updatedGamePlayer = updatedGame.players.firstWhere(
      (gp) => gp.player.id == state.gamePlayer.player.id,
    );

    emit(state.copyWith(game: updatedGame, gamePlayer: updatedGamePlayer));
    _logger.d("Toggled destination completion");
  }

  void _onDrawAdditionalDestinations(Emitter<PlayerTripsState> emit) {
    emit(state.copyWith(isLoading: true));

    try {
      final newDestinations = _gameService.drawAdditionalDestinations(_game, 4);
      _logger.i("Drew ${newDestinations.length} additional destinations");
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      _logger.e("Error drawing additional destinations", error: e);
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: "Failed to draw destinations: $e",
        ),
      );
    }
  }

  Game getUpdatedGame() => _game;
}
