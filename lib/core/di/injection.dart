import "package:get_it/get_it.dart";
import "package:logger/logger.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:ttr_app/core/models/game_config.dart";
import "package:ttr_app/core/models/game.dart";
import "package:ttr_app/core/repositories/game_data_repository.dart";
import "package:ttr_app/core/repositories/i_game_data_repository.dart";
import "package:ttr_app/core/repositories/i_player_repository.dart";
import "package:ttr_app/core/repositories/player_repository.dart";
import "package:ttr_app/core/services/game_service.dart";
import "package:ttr_app/core/services/i_game_service.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/trip_selection/bloc/trip_selection_bloc.dart";

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // External dependencies
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  // Logger
  getIt.registerSingleton<Logger>(
    Logger(printer: PrettyPrinter(methodCount: 0)),
  );

  // Config
  getIt.registerSingleton<GameConfig>(const GameConfig());

  // Repositories
  getIt.registerSingleton<IPlayerRepository>(
    PlayerRepository(getIt<SharedPreferences>()),
  );
  getIt.registerSingleton<IGameDataRepository>(GameDataRepository());

  // Services
  getIt.registerSingleton<IGameService>(
    GameService(
      gameDataRepository: getIt<IGameDataRepository>(),
      config: getIt<GameConfig>(),
      logger: getIt<Logger>(),
    ),
  );

  // BLoCs (factories for multiple instances)
  getIt.registerFactory<PlayerSelectionBloc>(
    () => PlayerSelectionBloc(
      playerRepository: getIt<IPlayerRepository>(),
      config: getIt<GameConfig>(),
      logger: getIt<Logger>(),
    ),
  );

  getIt.registerFactoryParam<TripSelectionBloc, Game, String>(
    (game, playerId) => TripSelectionBloc(
      gameService: getIt<IGameService>(),
      logger: getIt<Logger>(),
      game: game,
      playerId: playerId,
      isStartingGame: false,
    ),
  );
}
