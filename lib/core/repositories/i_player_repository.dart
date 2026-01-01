import "package:ttr_app/core/models/player.dart";

/// Repository interface for player persistence.
abstract class IPlayerRepository {
  /// Retrieves all saved players.
  Future<List<Player>> getAll();

  /// Saves a new player.
  Future<void> add(Player player);

  /// Removes a player by ID.
  Future<void> remove(String playerId);

  /// Checks if a player exists.
  Future<bool> exists(String playerId);
}
