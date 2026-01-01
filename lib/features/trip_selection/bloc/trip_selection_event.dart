import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/destination.dart";

part "trip_selection_event.freezed.dart";

@freezed
class TripSelectionEvent with _$TripSelectionEvent {
  const factory TripSelectionEvent.started({
    required String playerId,
    required bool isStartingGame,
  }) = _Started;
  const factory TripSelectionEvent.toggleLongDestination() =
      _ToggleLongDestination;
  const factory TripSelectionEvent.toggleShortDestination(
    Destination destination,
  ) = _ToggleShortDestination;
  const factory TripSelectionEvent.confirmSelection() = _ConfirmSelection;
}
