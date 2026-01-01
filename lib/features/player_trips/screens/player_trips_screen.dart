import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/models/destination.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/core/router/app_router.dart";
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
        title: Text("Destinations for player ${gamePlayer.player.name}"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: _drawNewDestinations,
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                            width: 80,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xDDFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "FINI",
                              textAlign: TextAlign.center,
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
    );
  }
}
