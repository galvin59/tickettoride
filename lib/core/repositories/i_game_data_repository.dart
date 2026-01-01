import "package:ttr_app/core/models/city.dart";
import "package:ttr_app/core/models/route.dart";
import "package:ttr_app/core/models/destination.dart";

/// Repository interface for loading game static data.
abstract class IGameDataRepository {
  /// Loads all cities from assets.
  Future<List<City>> loadCities();

  /// Loads all routes from assets.
  Future<List<Route>> loadRoutes();

  /// Loads all pre-computed destinations from assets.
  Future<List<Destination>> loadDestinations();
}
