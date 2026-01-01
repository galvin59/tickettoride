import "dart:convert";
import "package:flutter/services.dart";
import "package:ttr_app/core/models/city.dart";
import "package:ttr_app/core/models/route.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/repositories/i_game_data_repository.dart";

/// Asset-based implementation of IGameDataRepository.
class GameDataRepository implements IGameDataRepository {
  static const String _citiesAsset = "assets/data/cities.json";
  static const String _routesAsset = "assets/data/trips.json";
  static const String _destinationsAsset = "assets/data/computed.json";

  @override
  Future<List<City>> loadCities() async {
    final jsonString = await rootBundle.loadString(_citiesAsset);
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((j) => City.fromJson(_transformCityJson(j))).toList();
  }

  @override
  Future<List<Route>> loadRoutes() async {
    final jsonString = await rootBundle.loadString(_routesAsset);
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((j) => Route.fromJson(_transformRouteJson(j))).toList();
  }

  @override
  Future<List<Destination>> loadDestinations() async {
    final jsonString = await rootBundle.loadString(_destinationsAsset);
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList
        .map((j) => Destination.fromJson(j as Map<String, dynamic>))
        .toList();
  }

  /// Transforms legacy JSON format to new model format for cities.
  Map<String, dynamic> _transformCityJson(dynamic json) {
    final map = json as Map<String, dynamic>;
    return {"id": int.parse(map["id"].toString()), "name": map["name"]};
  }

  /// Transforms legacy JSON format to new model format for routes.
  Map<String, dynamic> _transformRouteJson(dynamic json) {
    final map = json as Map<String, dynamic>;
    return {
      "id": int.parse(map["id"].toString()),
      "departureCityId": int.parse(map["departureCityId"].toString()),
      "arrivalCityId": int.parse(map["arrivalCityId"].toString()),
      "length": int.parse(map["length"].toString()),
      "nbLocos": int.parse(map["nbLocos"].toString()),
      "isGrey": map["isGrey"] != "0",
      "isDouble": map["isDouble"] != "0",
      "isTunnel": map["isTunnel"] != "0",
    };
  }
}
