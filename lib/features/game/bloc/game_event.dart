import "package:freezed_annotation/freezed_annotation.dart";

part "game_event.freezed.dart";

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = _Started;
  const factory GameEvent.playerSelected(String playerId) = _PlayerSelected;
}
