import "package:freezed_annotation/freezed_annotation.dart";

part "route.freezed.dart";
part "route.g.dart";

/// Represents a direct connection between two adjacent cities.
@freezed
class Route with _$Route {
  const factory Route({
    required int id,
    required int departureCityId,
    required int arrivalCityId,
    required int length,
    @JsonKey(name: "nbLocos") required int locomotiveCount,
    required bool isGrey,
    required bool isDouble,
    required bool isTunnel,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
