import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/router/app_router.dart";

class GameScreen extends StatefulWidget {
  final Game game;

  const GameScreen({super.key, required this.game});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Current game"),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () async {
                context.go(AppRoutes.playerSelection);
              },
              child: const Icon(Icons.refresh),
            ),
          ),
        ],
      ),
      body: Column(
        children: widget.game.players.map((gamePlayer) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () async {
                  await context.push(
                    "${AppRoutes.playerTrips}/${gamePlayer.player.id}",
                    extra: widget.game,
                  );
                  setState(() {});
                },
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                gamePlayer.player.name,
                                style: const TextStyle(fontSize: 22),
                              ),
                              Text(
                                "${gamePlayer.destinations.length} trajets",
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Icon(Icons.arrow_forward_ios_outlined),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
