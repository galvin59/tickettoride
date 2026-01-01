import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/destination.dart";

part "trip_selection_state.freezed.dart";

@freezed
class TripSelectionState with _$TripSelectionState {
  const factory TripSelectionState({
    required String playerId,
    required bool isStartingGame,
    Destination? longDestination,
    @Default([]) List<Destination> shortDestinations,
    @Default([]) List<Destination> selectedShortDestinations,
    @Default(false) bool hasSelectedLongDestination,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _TripSelectionState;
}
