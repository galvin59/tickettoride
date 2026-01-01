import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/destination.dart";

part "player_trips_event.freezed.dart";

@freezed
class PlayerTripsEvent with _$PlayerTripsEvent {
  const factory PlayerTripsEvent.started() = _Started;
  const factory PlayerTripsEvent.toggleDestination(Destination destination) =
      _ToggleDestination;
  const factory PlayerTripsEvent.drawAdditionalDestinations() =
      _DrawAdditionalDestinations;
}
