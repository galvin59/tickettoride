import "package:flutter_test/flutter_test.dart";
import "package:ttr_app/core/models/city.dart";

void main() {
  group("City", () {
    test("should create a City instance", () {
      const city = City(id: 1, name: "Paris");

      expect(city.id, 1);
      expect(city.name, "Paris");
    });

    test("should serialize to JSON", () {
      const city = City(id: 1, name: "Paris");
      final json = city.toJson();

      expect(json["id"], 1);
      expect(json["name"], "Paris");
    });

    test("should deserialize from JSON", () {
      final json = {"id": 1, "name": "Paris"};
      final city = City.fromJson(json);

      expect(city.id, 1);
      expect(city.name, "Paris");
    });
  });
}
