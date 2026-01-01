import "package:flutter_bloc/flutter_bloc.dart";
import "package:logger/logger.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/features/game/bloc/game_event.dart";
import "package:ttr_app/features/game/bloc/game_state.dart";

class GameBloc extends Bloc<GameEvent, GameState> {
  final Logger _logger;

  GameBloc({required Logger logger, required Game game})
    : _logger = logger,
      super(GameState(game: game)) {
    on<GameEvent>((event, emit) async {
      await event.when(
        started: () async => _onStarted(emit),
        playerSelected: (playerId) async => _onPlayerSelected(playerId, emit),
      );
    });
  }

  void _onStarted(Emitter<GameState> emit) {
    _logger.i("Game started with ${state.game.players.length} players");
  }

  void _onPlayerSelected(String playerId, Emitter<GameState> emit) {
    emit(state.copyWith(selectedPlayerId: playerId));
    _logger.d("Selected player: $playerId");
  }
}
