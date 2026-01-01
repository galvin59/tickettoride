import "package:freezed_annotation/freezed_annotation.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/game_player.dart";

part "player_trips_state.freezed.dart";

@freezed
class PlayerTripsState with _$PlayerTripsState {
  const factory PlayerTripsState({
    required Game game,
    required GamePlayer gamePlayer,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _PlayerTripsState;
}
