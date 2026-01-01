import "dart:math";
import "package:quiver/collection.dart";
import "package:ttr_app/core/models/destination.dart";

/// A typed list of destinations with draw functionality.
class DestinationList extends DelegatingList<Destination> {
  final List<Destination> _items;

  DestinationList([List<Destination>? items]) : _items = items ?? [];

  @override
  List<Destination> get delegate => _items;

  /// Draws a random destination from the list.
  Destination draw() {
    if (isEmpty) {
      throw StateError("Cannot draw from an empty destination list");
    }
    final randomIndex = Random().nextInt(length);
    return this[randomIndex];
  }

  /// Creates a copy of this list.
  DestinationList copy() => DestinationList(List.from(_items));
}
