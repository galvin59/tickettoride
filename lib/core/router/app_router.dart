import "package:go_router/go_router.dart";
import "package:ttr_app/features/player_selection/screens/player_selection_screen.dart";
import "package:ttr_app/features/trip_selection/screens/trip_selection_screen.dart";
import "package:ttr_app/features/game/screens/game_screen.dart";
import "package:ttr_app/features/player_trips/screens/player_trips_screen.dart";
import "package:ttr_app/core/models/game.dart";

// Route names as constants
abstract class AppRoutes {
  static const String playerSelection = "/";
  static const String game = "/game";
  static const String tripSelection = "/trip-selection";
  static const String playerTrips = "/player-trips";
}

// Route parameters
abstract class RouteParams {
  static const String playerId = "playerId";
  static const String isStartingGame = "isStartingGame";
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.playerSelection,
  routes: [
    GoRoute(
      path: AppRoutes.playerSelection,
      name: "playerSelection",
      builder: (context, state) => const PlayerSelectionScreen(),
    ),
    GoRoute(
      path: AppRoutes.game,
      name: "game",
      builder: (context, state) {
        final game = state.extra as Game;
        return GameScreen(game: game);
      },
    ),
    GoRoute(
      path: "${AppRoutes.tripSelection}/:${RouteParams.playerId}",
      name: "tripSelection",
      builder: (context, state) {
        final playerId = state.pathParameters[RouteParams.playerId]!;
        final isStartingGame =
            state.uri.queryParameters[RouteParams.isStartingGame] == "true";
        final game = state.extra as Game;
        return TripSelectionScreen(
          playerId: playerId,
          isStartingGame: isStartingGame,
          game: game,
        );
      },
    ),
    GoRoute(
      path: "${AppRoutes.playerTrips}/:${RouteParams.playerId}",
      name: "playerTrips",
      builder: (context, state) {
        final playerId = state.pathParameters[RouteParams.playerId]!;
        final game = state.extra as Game;
        return PlayerTripsScreen(playerId: playerId, game: game);
      },
    ),
  ],
);
