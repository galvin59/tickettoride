import "package:freezed_annotation/freezed_annotation.dart";

part "destination.freezed.dart";
part "destination.g.dart";

/// Represents a destination ticket between two cities with a point value.
@freezed
class Destination with _$Destination {
  const factory Destination({
    @JsonKey(name: "did") required int departureCityId,
    @JsonKey(name: "aid") required int arrivalCityId,
    @JsonKey(name: "dname") required String departureCityName,
    @JsonKey(name: "aname") required String arrivalCityName,
    @JsonKey(name: "nb") required int points,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}
