import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/services/i_game_service.dart";
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
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset("assets/ttrlogo.jpeg"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Center(
                            child: Text(
                              "Random destinations picker",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "You played too many times Ticket-To-Ride just as we did, and know the destinations which come with the board game by hear ?",
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "This little application will draw random destinations (both shorts and longs) for you !",
                          ),
                          const SizedBox(height: 5),
                          const Text("Note : works only with Europe edition"),
                          const SizedBox(height: 20),
                        ],
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
                                    child: ListTile(
                                      onTap: () {
                                        context.read<PlayerSelectionBloc>().add(
                                          PlayerSelectionEvent.togglePlayerSelection(
                                            player.id,
                                          ),
                                        );
                                      },
                                      title: Text(player.name),
                                      trailing: Icon(
                                        Icons.check,
                                        color: isSelected
                                            ? Colors.green
                                            : Colors.grey.withAlpha(50),
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
                      return OutlinedButton(
                        onPressed: state.selectedPlayerIds.length >= minPlayers
                            ? () => _onStartGame(context, state)
                            : null,
                        child: Text(
                          "Start game",
                          style: TextStyle(
                            color: state.selectedPlayerIds.length >= minPlayers
                                ? Colors.green
                                : Colors.grey,
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
