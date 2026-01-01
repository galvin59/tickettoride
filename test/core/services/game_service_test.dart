import "package:flutter_test/flutter_test.dart";
import "package:logger/logger.dart";
import "package:mocktail/mocktail.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/game_config.dart";
import "package:ttr_app/core/repositories/i_game_data_repository.dart";
import "package:ttr_app/core/services/game_service.dart";

class MockGameDataRepository extends Mock implements IGameDataRepository {}

class MockLogger extends Mock implements Logger {}

void main() {
  late GameService gameService;
  late MockGameDataRepository mockRepository;
  late MockLogger mockLogger;

  setUp(() {
    mockRepository = MockGameDataRepository();
    mockLogger = MockLogger();
    gameService = GameService(
      gameDataRepository: mockRepository,
      config: const GameConfig(),
      logger: mockLogger,
    );
  });

  group("GameService", () {
    test("should create a game with selected players", () async {
      when(() => mockRepository.loadCities()).thenAnswer((_) async => []);
      when(() => mockRepository.loadRoutes()).thenAnswer((_) async => []);
      when(() => mockRepository.loadDestinations()).thenAnswer((_) async => []);

      await gameService.initialize();

      final players = [
        const Player(id: "1", name: "Player 1"),
        const Player(id: "2", name: "Player 2"),
      ];

      final game = gameService.createGame(players);

      expect(game.players.length, 2);
      expect(game.players[0].player.name, "Player 1");
      expect(game.players[1].player.name, "Player 2");
    });
  });
}
