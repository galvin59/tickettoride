import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:logger/logger.dart";
import "package:mocktail/mocktail.dart";
import "package:ttr_app/core/models/player.dart";
import "package:ttr_app/core/models/game_config.dart";
import "package:ttr_app/core/repositories/i_player_repository.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";

class MockPlayerRepository extends Mock implements IPlayerRepository {}

class MockLogger extends Mock implements Logger {}

void main() {
  late PlayerSelectionBloc bloc;
  late MockPlayerRepository mockRepository;
  late MockLogger mockLogger;

  setUp(() {
    mockRepository = MockPlayerRepository();
    mockLogger = MockLogger();
    bloc = PlayerSelectionBloc(
      playerRepository: mockRepository,
      config: const GameConfig(),
      logger: mockLogger,
    );
  });

  tearDown(() {
    bloc.close();
  });

  group("PlayerSelectionBloc", () {
    test("initial state is correct", () {
      expect(bloc.state, const PlayerSelectionState());
    });

    blocTest<PlayerSelectionBloc, PlayerSelectionState>(
      "emits loaded players when started",
      build: () {
        when(
          () => mockRepository.getAll(),
        ).thenAnswer((_) async => [const Player(id: "1", name: "Player 1")]);
        return bloc;
      },
      act: (bloc) => bloc.add(const PlayerSelectionEvent.started()),
      expect: () => [
        const PlayerSelectionState(isLoading: true),
        const PlayerSelectionState(
          allPlayers: [Player(id: "1", name: "Player 1")],
          isLoading: false,
        ),
      ],
    );

    blocTest<PlayerSelectionBloc, PlayerSelectionState>(
      "emits updated name when player name changed",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(const PlayerSelectionEvent.playerNameChanged("John")),
      expect: () => [const PlayerSelectionState(currentPlayerName: "John")],
    );
  });
}
