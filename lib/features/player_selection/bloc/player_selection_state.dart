import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/player.dart";

part "player_selection_state.freezed.dart";

@freezed
class PlayerSelectionState with _$PlayerSelectionState {
  const factory PlayerSelectionState({
    @Default([]) List<Player> allPlayers,
    @Default([]) List<String> selectedPlayerIds,
    @Default("") String currentPlayerName,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _PlayerSelectionState;
}
