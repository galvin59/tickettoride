import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/destination.dart";

part "player_destination.freezed.dart";

/// Represents a destination assigned to a player with completion status.
@freezed
class PlayerDestination with _$PlayerDestination {
  const factory PlayerDestination({
    required Destination destination,
    @Default(false) bool isCompleted,
  }) = _PlayerDestination;
}
