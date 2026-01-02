import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/theme/app_theme.dart";
import "package:ttr_app/core/l10n/app_localizations.dart";
import "package:ttr_app/features/trip_selection/widgets/destination_card.dart";

class PlayerTripsScreen extends StatefulWidget {
  final String playerId;
  final Game game;

  const PlayerTripsScreen({
    super.key,
    required this.playerId,
    required this.game,
  });

  @override
  State<PlayerTripsScreen> createState() => _PlayerTripsScreenState();
}

class _PlayerTripsScreenState extends State<PlayerTripsScreen> {
  late Game _currentGame;

  @override
  void initState() {
    super.initState();
    _currentGame = widget.game;
  }

  Future<void> _drawNewDestinations() async {
    if (!mounted) return;

    final selectedDestinations = await context.push<List<Destination>>(
      "${AppRoutes.tripSelection}/${widget.playerId}?${RouteParams.isStartingGame}=false",
      extra: _currentGame,
    );

    if (selectedDestinations != null && selectedDestinations.isNotEmpty) {
      setState(() {
        final gameService = getIt<IGameService>();
        final updatedGame = gameService.assignDestinations(
          game: _currentGame,
          playerId: widget.playerId,
          longDestination: null,
          shortDestinations: selectedDestinations,
        );
        _currentGame = updatedGame;
      });
    }
  }

  void _toggleDestinationCompletion(Destination destination) {
    setState(() {
      final gameService = getIt<IGameService>();
      _currentGame = gameService.toggleDestinationCompletion(
        game: _currentGame,
        playerId: widget.playerId,
        destination: destination,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final gamePlayer = _currentGame.players.firstWhere(
      (gp) => gp.player.id == widget.playerId,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${AppLocalizations.of(context)!.destinationsForPlayer} ${gamePlayer.player.name}",
        ),
        actions: [
          IconButton(
            onPressed: _drawNewDestinations,
            icon: const Icon(Icons.add_circle_outline),
            tooltip: AppLocalizations.of(context)!.drawNewDestinations,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              ListView.builder(
                itemCount: gamePlayer.destinations.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final playerDestination = gamePlayer.destinations[index];
                  final destination = playerDestination.destination;
                  return Dismissible(
                    key: Key(
                      "${destination.arrivalCityId}-${destination.departureCityId}",
                    ),
                    onDismissed: (direction) {},
                    confirmDismiss: (direction) async {
                      _toggleDestinationCompletion(destination);
                      return false;
                    },
                    child: Stack(
                      children: [
                        DestinationCard(
                          destination: destination,
                          isSelected: false,
                          onTap: () {},
                          isBlurred: false,
                        ),
                        if (playerDestination.isCompleted)
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppColors.success,
                                    Color(0xFF229954),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.success.withOpacity(0.4),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    AppLocalizations.of(context)!.completed,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
