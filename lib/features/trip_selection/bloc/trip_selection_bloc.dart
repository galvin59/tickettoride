import "package:flutter_bloc/flutter_bloc.dart";
import "package:logger/logger.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_event.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_state.dart";

class TripSelectionBloc extends Bloc<TripSelectionEvent, TripSelectionState> {
  final IGameService _gameService;
  final Logger _logger;
  final Game _game;

  TripSelectionBloc({
    required IGameService gameService,
    required Logger logger,
    required Game game,
    required String playerId,
    required bool isStartingGame,
  }) : _gameService = gameService,
       _logger = logger,
       _game = game,
       super(
         TripSelectionState(playerId: playerId, isStartingGame: isStartingGame),
       ) {
    on<TripSelectionEvent>((event, emit) async {
      await event.when(
        started: (playerId, isStartingGame) async => _onStarted(emit),
        toggleLongDestination: () async => _onToggleLongDestination(emit),
        toggleShortDestination: (destination) async =>
            _onToggleShortDestination(destination, emit),
        confirmSelection: () async => _onConfirmSelection(emit),
      );
    });
  }

  void _onStarted(Emitter<TripSelectionState> emit) {
    try {
      if (state.isStartingGame) {
        final drawResult = _gameService.drawInitialDestinations(_game);

        _logger.i(
          "Drew destinations for player ${state.playerId}: 1 long + ${drawResult.shortDestinations.length} short",
        );

        emit(
          state.copyWith(
            longDestination: drawResult.longDestination,
            shortDestinations: drawResult.shortDestinations,
            hasSelectedLongDestination: true,
          ),
        );
      } else {
        final shortDestinations = _gameService.drawAdditionalDestinations(
          _game,
          3,
        );

        _logger.i(
          "Drew ${shortDestinations.length} short destinations for player ${state.playerId}",
        );

        emit(
          state.copyWith(
            longDestination: null,
            shortDestinations: shortDestinations,
            hasSelectedLongDestination: false,
          ),
        );
      }
    } catch (e, stackTrace) {
      _logger.e("Error drawing destinations", error: e, stackTrace: stackTrace);
      emit(state.copyWith(errorMessage: "Failed to draw destinations: $e"));
    }
  }

  void _onToggleLongDestination(Emitter<TripSelectionState> emit) {
    emit(
      state.copyWith(
        hasSelectedLongDestination: !state.hasSelectedLongDestination,
      ),
    );
  }

  void _onToggleShortDestination(
    Destination destination,
    Emitter<TripSelectionState> emit,
  ) {
    final selected = List<Destination>.from(state.selectedShortDestinations);

    if (selected.any(
      (d) =>
          d.departureCityId == destination.departureCityId &&
          d.arrivalCityId == destination.arrivalCityId,
    )) {
      selected.removeWhere(
        (d) =>
            d.departureCityId == destination.departureCityId &&
            d.arrivalCityId == destination.arrivalCityId,
      );
    } else {
      selected.add(destination);
    }

    emit(state.copyWith(selectedShortDestinations: selected));
  }

  void _onConfirmSelection(Emitter<TripSelectionState> emit) {
    if (state.selectedShortDestinations.isEmpty) {
      emit(
        state.copyWith(
          errorMessage: "Please select at least one short destination",
        ),
      );
      return;
    }

    _logger.i(
      "Confirmed selection for player ${state.playerId}: ${state.hasSelectedLongDestination ? 1 : 0} long + ${state.selectedShortDestinations.length} short",
    );
  }

  Game getUpdatedGame() {
    return _gameService.assignDestinations(
      game: _game,
      playerId: state.playerId,
      longDestination: state.hasSelectedLongDestination
          ? state.longDestination
          : null,
      shortDestinations: state.selectedShortDestinations,
    );
  }
}
