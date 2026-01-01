import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/player_destination.dart";

part "game_player.freezed.dart";

/// Represents a player in an active game with their destinations.
@freezed
class GamePlayer with _$GamePlayer {
  const factory GamePlayer({
    required Player player,
    required List<PlayerDestination> destinations,
  }) = _GamePlayer;
}
