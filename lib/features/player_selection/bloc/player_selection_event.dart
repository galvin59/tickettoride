import "package:freezed_annotation/freezed_annotation.dart";

part "player_selection_event.freezed.dart";

@freezed
class PlayerSelectionEvent with _$PlayerSelectionEvent {
  const factory PlayerSelectionEvent.started() = _Started;
  const factory PlayerSelectionEvent.playerNameChanged(String name) =
      _PlayerNameChanged;
  const factory PlayerSelectionEvent.addPlayerPressed() = _AddPlayerPressed;
  const factory PlayerSelectionEvent.deletePlayerPressed(String playerId) =
      _DeletePlayerPressed;
  const factory PlayerSelectionEvent.togglePlayerSelection(String playerId) =
      _TogglePlayerSelection;
  const factory PlayerSelectionEvent.startGamePressed() = _StartGamePressed;
}
