import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/theme/app_theme.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";
import "package:ttr_app/features/player_selection/widgets/add_player_form.dart";

class PlayerSelectionScreen extends StatelessWidget {
  const PlayerSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<PlayerSelectionBloc>()
            ..add(const PlayerSelectionEvent.started()),
      child: const _PlayerSelectionView(),
    );
  }
}

class _PlayerSelectionView extends StatelessWidget {
  const _PlayerSelectionView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocConsumer<PlayerSelectionBloc, PlayerSelectionState>(
            listenWhen: (previous, current) =>
                previous.errorMessage != current.errorMessage,
            listener: (context, state) {
              if (state.errorMessage != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage!),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state.isLoading && state.allPlayers.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Image.asset("assets/ttrlogo.jpeg", height: 180),
                            const SizedBox(height: 24),
                            Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppColors.primary,
                                    Color(0xFF34495E),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primary.withOpacity(0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.train,
                                    color: AppColors.accent,
                                    size: 48,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    "Random Destinations",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    "Draw random destinations for Ticket to Ride Europe",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Select at least 2 players in the list below",
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.allPlayers.length + 1,
                              itemBuilder: (context, index) {
                                if (index < state.allPlayers.length) {
                                  final player = state.allPlayers[index];
                                  final isSelected = state.selectedPlayerIds
                                      .contains(player.id);
                                  return Dismissible(
                                    key: ValueKey<String>(player.id),
                                    onDismissed: (direction) {
                                      context.read<PlayerSelectionBloc>().add(
                                        PlayerSelectionEvent.deletePlayerPressed(
                                          player.id,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? AppColors.accent.withOpacity(0.1)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: isSelected
                                              ? AppColors.accent
                                              : Colors.grey.shade300,
                                          width: isSelected ? 2 : 1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.05,
                                            ),
                                            blurRadius: 8,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 12,
                                            ),
                                        leading: CircleAvatar(
                                          backgroundColor: isSelected
                                              ? AppColors.accent
                                              : Colors.grey.shade300,
                                          radius: 24,
                                          child: Text(
                                            player.name[0].toUpperCase(),
                                            style: TextStyle(
                                              color: isSelected
                                                  ? Colors.white
                                                  : Colors.grey.shade600,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        title: Text(
                                          player.name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: isSelected
                                                ? FontWeight.w600
                                                : FontWeight.normal,
                                          ),
                                        ),
                                        trailing: Icon(
                                          isSelected
                                              ? Icons.check_circle
                                              : Icons.circle_outlined,
                                          color: isSelected
                                              ? AppColors.success
                                              : Colors.grey.shade400,
                                          size: 28,
                                        ),
                                        onTap: () {
                                          context.read<PlayerSelectionBloc>().add(
                                            PlayerSelectionEvent.togglePlayerSelection(
                                              player.id,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                } else {
                                  return const AddPlayerForm();
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<PlayerSelectionBloc, PlayerSelectionState>(
                    builder: (context, state) {
                      final minPlayers = 2;
                      final isEnabled =
                          state.selectedPlayerIds.length >= minPlayers;
                      return Container(
                        width: double.infinity,
                        height: 56,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          gradient: isEnabled
                              ? const LinearGradient(
                                  colors: [
                                    AppColors.secondary,
                                    Color(0xFFC0392B),
                                  ],
                                )
                              : null,
                          color: isEnabled ? null : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: isEnabled
                              ? [
                                  BoxShadow(
                                    color: AppColors.secondary.withOpacity(0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ]
                              : null,
                        ),
                        child: ElevatedButton(
                          onPressed: isEnabled
                              ? () => _onStartGame(context, state)
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            disabledBackgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "START GAME",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: isEnabled
                                  ? Colors.white
                                  : Colors.grey.shade600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _onStartGame(BuildContext context, PlayerSelectionState state) {
    if (state.selectedPlayerIds.length < 2) {
      return;
    }

    try {
      final selectedPlayers = state.allPlayers
          .where((p) => state.selectedPlayerIds.contains(p.id))
          .toList();

      final game = getIt<IGameService>().createGame(selectedPlayers);

      if (game.players.isNotEmpty) {
        final firstPlayerId = game.players.first.player.id;
        context.push(
          "${AppRoutes.tripSelection}/$firstPlayerId?${RouteParams.isStartingGame}=true",
          extra: game,
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error starting game: $e"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
