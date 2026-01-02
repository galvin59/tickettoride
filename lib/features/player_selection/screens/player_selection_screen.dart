import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/theme/app_theme.dart";
import "package:ttr_app/core/l10n/app_localizations.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";
import "package:ttr_app/features/player_selection/widgets/add_player_form.dart";
import "package:ttr_app/shared/widgets/info_button.dart";
import "package:ttr_app/shared/widgets/language_selector.dart";

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 40,
        actions: const [LanguageSelector(), InfoButton()],
      ),
      body: BlocConsumer<PlayerSelectionBloc, PlayerSelectionState>(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: const Column(children: []),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade200, width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.allPlayers.isNotEmpty) ...[
                        Row(
                          children: [
                            Icon(
                              Icons.people,
                              color: AppColors.accent,
                              size: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              AppLocalizations.of(
                                context,
                              )!.playerSelectionTitle,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          AppLocalizations.of(context)!.selectAtLeastPlayers,
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                      const SizedBox(height: 16),
                      if (state.allPlayers.isEmpty) ...[
                        const SizedBox(height: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.loose,
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 120,
                                  ),
                                  child: Image.asset(
                                    "assets/images/icon.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                AppLocalizations.of(
                                  context,
                                )!.welcomeToTicketToRide,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                AppLocalizations.of(context)!.appDescription,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textSecondary,
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 24),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.accent,
                                      AppColors.accent.withOpacity(0.8),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.accent.withOpacity(0.3),
                                      blurRadius: 12,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton.icon(
                                  onPressed: () => showAddPlayerDialog(context),
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    AppLocalizations.of(
                                      context,
                                    )!.createFirstPlayer,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                      vertical: 16,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ] else ...[
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: state.allPlayers.length,
                            itemBuilder: (context, index) {
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
                                        color: Colors.black.withOpacity(0.05),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
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
                            },
                          ),
                        ),
                        const SizedBox(height: 12),
                        const AddPlayerForm(),
                      ],
                    ],
                  ),
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
                              colors: [AppColors.secondary, Color(0xFFC0392B)],
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
                        AppLocalizations.of(context)!.startGame,
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
              const SizedBox(height: 50),
            ],
          );
        },
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
