import "package:freezed_annotation/freezed_annotation.dart";

part "game_config.freezed.dart";

/// Configuration parameters for game rules.
@freezed
class GameConfig with _$GameConfig {
  const factory GameConfig({
    @Default(20) int minLongDestinationPoints,
    @Default(22) int maxLongDestinationPoints,
    @Default(5) int minShortDestinationPoints,
    @Default(13) int maxShortDestinationPoints,
    @Default(3) int minDistanceBetweenLongDestinations,
    @Default(4) int destinationsPerDraw,
    @Default(2) int minPlayersToStart,
  }) = _GameConfig;
}
