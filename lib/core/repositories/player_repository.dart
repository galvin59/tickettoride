import "dart:convert";
import "package:shared_preferences/shared_preferences.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/repositories/i_player_repository.dart";

/// SharedPreferences implementation of IPlayerRepository.
class PlayerRepository implements IPlayerRepository {
  static const String _playersKey = "players";

  final SharedPreferences _prefs;

  PlayerRepository(this._prefs);

  @override
  Future<List<Player>> getAll() async {
    final jsonString = _prefs.getString(_playersKey);
    if (jsonString == null) return [];

    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList
        .map((j) => Player.fromJson(j as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> add(Player player) async {
    final players = await getAll();
    players.add(player);
    await _savePlayers(players);
  }

  @override
  Future<void> remove(String playerId) async {
    final players = await getAll();
    players.removeWhere((p) => p.id == playerId);
    await _savePlayers(players);
  }

  @override
  Future<bool> exists(String playerId) async {
    final players = await getAll();
    return players.any((p) => p.id == playerId);
  }

  Future<void> _savePlayers(List<Player> players) async {
    final jsonList = players.map((p) => p.toJson()).toList();
    await _prefs.setString(_playersKey, json.encode(jsonList));
  }
}
