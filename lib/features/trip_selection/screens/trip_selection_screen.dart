import "dart:ui";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:logger/logger.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/core/l10n/app_localizations.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_bloc.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_event.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_state.dart";
import "package:ttr_app/features/trip_selection/widgets/destination_card.dart";

class TripSelectionScreen extends StatefulWidget {
  final Game game;
  final String playerId;
  final bool isStartingGame;

  const TripSelectionScreen({
    super.key,
    required this.game,
    required this.playerId,
    required this.isStartingGame,
  });

  @override
  State<TripSelectionScreen> createState() => _TripSelectionScreenState();
}

class _TripSelectionScreenState extends State<TripSelectionScreen> {
  bool _isBlurred = false;

  @override
  void initState() {
    super.initState();
    _isBlurred = widget.isStartingGame;
    if (widget.isStartingGame) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (!mounted) return;
        final playerName = widget.game.players
            .firstWhere((gp) => gp.player.id == widget.playerId)
            .player
            .name;
        await _showPlayerTurnDialog(playerName);
        if (mounted) {
          setState(() {
            _isBlurred = false;
          });
        }
      });
    }
  }

  Future<void> _showPlayerTurnDialog(String playerName) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("$playerName, ${AppLocalizations.of(context)!.yourTurn}"),
          content: Text(
            AppLocalizations.of(context)!.chooseDestinationsDescription,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(AppLocalizations.of(context)!.ok),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          TripSelectionBloc(
            gameService: getIt<IGameService>(),
            logger: getIt<Logger>(),
            game: widget.game,
            playerId: widget.playerId,
            isStartingGame: widget.isStartingGame,
          )..add(
            TripSelectionEvent.started(
              playerId: widget.playerId,
              isStartingGame: widget.isStartingGame,
            ),
          ),
      child: _TripSelectionView(
        isBlurred: _isBlurred,
        isStartingGame: widget.isStartingGame,
      ),
    );
  }
}

class _TripSelectionView extends StatelessWidget {
  final bool isBlurred;
  final bool isStartingGame;

  const _TripSelectionView({
    required this.isBlurred,
    required this.isStartingGame,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TripSelectionBloc, TripSelectionState>(
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
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final playerName = isStartingGame
            ? context
                  .read<TripSelectionBloc>()
                  .getUpdatedGame()
                  .players
                  .firstWhere((gp) => gp.player.id == state.playerId)
                  .player
                  .name
            : "";

        return Scaffold(
          appBar: AppBar(
            title: Text(
              "${AppLocalizations.of(context)!.destinationsForPlayer} $playerName",
            ),
            leading: isStartingGame
                ? InkWell(
                    onTap: () => context.pop(),
                    child: const Icon(Icons.close),
                  )
                : Container(),
            actions: [
              Visibility(
                visible: state.selectedShortDestinations.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () => _onConfirm(context, state),
                    child: const Icon(Icons.check),
                  ),
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  if (state.longDestination != null && isStartingGame) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.longDestination,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          DestinationCard(
                            destination: state.longDestination!,
                            isSelected: true,
                            onTap: () {},
                            isBlurred: isBlurred,
                          ),
                        ],
                      ),
                    ),
                  ],
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${AppLocalizations.of(context)!.selectAtLeast} 1 ${AppLocalizations.of(context)!.destinations}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ...state.shortDestinations.map((destination) {
                          final isSelected = state.selectedShortDestinations
                              .any(
                                (d) =>
                                    d.departureCityId ==
                                        destination.departureCityId &&
                                    d.arrivalCityId ==
                                        destination.arrivalCityId,
                              );
                          return DestinationCard(
                            destination: destination,
                            isSelected: isSelected,
                            onTap: () {
                              context.read<TripSelectionBloc>().add(
                                TripSelectionEvent.toggleShortDestination(
                                  destination,
                                ),
                              );
                            },
                            isBlurred: isBlurred,
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
              if (isBlurred)
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(color: Colors.transparent),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  void _onConfirm(BuildContext context, TripSelectionState state) {
    if (state.selectedShortDestinations.isEmpty) {
      return;
    }

    context.read<TripSelectionBloc>().add(
      const TripSelectionEvent.confirmSelection(),
    );
    final bloc = context.read<TripSelectionBloc>();
    final updatedGame = bloc.getUpdatedGame();

    if (state.isStartingGame) {
      final currentPlayerIndex = updatedGame.players.indexWhere(
        (gp) => gp.player.id == state.playerId,
      );
      if (currentPlayerIndex < updatedGame.players.length - 1) {
        final nextPlayer = updatedGame.players[currentPlayerIndex + 1];
        context.pushReplacement(
          "${AppRoutes.tripSelection}/${nextPlayer.player.id}?${RouteParams.isStartingGame}=true",
          extra: updatedGame,
        );
      } else {
        context.go(AppRoutes.game, extra: updatedGame);
      }
    } else {
      context.pop(state.selectedShortDestinations);
    }
  }
}
