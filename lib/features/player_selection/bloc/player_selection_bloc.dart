import "package:flutter_bloc/flutter_bloc.dart";
import "package:logger/logger.dart";
import "package:uuid/uuid.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/game_config.dart";
import "package:ttr_app/core/repositories/i_player_repository.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";

class PlayerSelectionBloc
    extends Bloc<PlayerSelectionEvent, PlayerSelectionState> {
  final IPlayerRepository _playerRepository;
  final GameConfig _config;
  final Logger _logger;
  final Uuid _uuid;

  PlayerSelectionBloc({
    required IPlayerRepository playerRepository,
    required GameConfig config,
    required Logger logger,
  }) : _playerRepository = playerRepository,
       _config = config,
       _logger = logger,
       _uuid = const Uuid(),
       super(const PlayerSelectionState()) {
    on<PlayerSelectionEvent>((event, emit) async {
      await event.when(
        started: () => _onStarted(emit),
        playerNameChanged: (name) async => _onPlayerNameChanged(name, emit),
        addPlayerPressed: () => _onAddPlayerPressed(emit),
        deletePlayerPressed: (playerId) =>
            _onDeletePlayerPressed(playerId, emit),
        togglePlayerSelection: (playerId) async =>
            _onTogglePlayerSelection(playerId, emit),
        startGamePressed: () async => _onStartGamePressed(emit),
      );
    });
  }

  Future<void> _onStarted(Emitter<PlayerSelectionState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final players = await _playerRepository.getAll();
      _logger.i("Loaded \${players.length} players");
      emit(state.copyWith(allPlayers: players, isLoading: false));
    } catch (e) {
      _logger.e("Error loading players", error: e);
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: "Failed to load players: \$e",
        ),
      );
    }
  }

  void _onPlayerNameChanged(String name, Emitter<PlayerSelectionState> emit) {
    emit(state.copyWith(currentPlayerName: name));
  }

  Future<void> _onAddPlayerPressed(Emitter<PlayerSelectionState> emit) async {
    final name = state.currentPlayerName.trim();
    if (name.isEmpty) {
      emit(state.copyWith(errorMessage: "Player name cannot be empty"));
      return;
    }
    if (state.allPlayers.any(
      (p) => p.name.toLowerCase() == name.toLowerCase(),
    )) {
      emit(
        state.copyWith(errorMessage: "A player with this name already exists"),
      );
      return;
    }
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final newPlayer = Player(id: _uuid.v4(), name: name);
      await _playerRepository.add(newPlayer);
      final updatedPlayers = [...state.allPlayers, newPlayer];
      _logger.i("Added player: \$name");
      emit(
        state.copyWith(
          allPlayers: updatedPlayers,
          currentPlayerName: "",
          isLoading: false,
        ),
      );
    } catch (e) {
      _logger.e("Error adding player", error: e);
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: "Failed to add player: \$e",
        ),
      );
    }
  }

  Future<void> _onDeletePlayerPressed(
    String playerId,
    Emitter<PlayerSelectionState> emit,
  ) async {
    // Optimistic update: Remove player from state immediately to satisfy Dismissible requirement
    final updatedPlayers = state.allPlayers
        .where((p) => p.id != playerId)
        .toList();
    final updatedSelectedIds = state.selectedPlayerIds
        .where((id) => id != playerId)
        .toList();

    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: null,
        allPlayers: updatedPlayers,
        selectedPlayerIds: updatedSelectedIds,
      ),
    );

    try {
      await _playerRepository.remove(playerId);
      _logger.i("Deleted player: $playerId");
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      _logger.e("Error deleting player", error: e);
      // If deletion fails, we should ideally revert or reload.
      // Reloading ensuring we are in sync with source of truth.
      final players = await _playerRepository.getAll();
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: "Failed to delete player: $e",
          allPlayers: players,
        ),
      );
    }
  }

  void _onTogglePlayerSelection(
    String playerId,
    Emitter<PlayerSelectionState> emit,
  ) {
    final selectedIds = List<String>.from(state.selectedPlayerIds);
    if (selectedIds.contains(playerId)) {
      selectedIds.remove(playerId);
    } else {
      selectedIds.add(playerId);
    }
    emit(state.copyWith(selectedPlayerIds: selectedIds, errorMessage: null));
  }

  void _onStartGamePressed(Emitter<PlayerSelectionState> emit) {
    if (state.selectedPlayerIds.length < _config.minPlayersToStart) {
      emit(
        state.copyWith(
          errorMessage:
              "Please select at least \${_config.minPlayersToStart} players to start",
        ),
      );
      return;
    }
    emit(state.copyWith(errorMessage: null));
    _logger.i("Starting game with \${state.selectedPlayerIds.length} players");
  }
}
