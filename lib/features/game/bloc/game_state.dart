import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/game.dart";

part "game_state.freezed.dart";

@freezed
class GameState with _$GameState {
  const factory GameState({
    required Game game,
    String? selectedPlayerId,
    @Default(false) bool isLoading,
  }) = _GameState;
}
