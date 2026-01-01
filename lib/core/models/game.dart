import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/game_player.dart";
import "package:ttr_app/core/models/destination.dart";

part "game.freezed.dart";

/// Represents an active game session.
@freezed
class Game with _$Game {
  const factory Game({
    required List<GamePlayer> players,
    required List<Destination> availableLongDestinations,
    required List<Destination> availableShortDestinations,
  }) = _Game;
}
