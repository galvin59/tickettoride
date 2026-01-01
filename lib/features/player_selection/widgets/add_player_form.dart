import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";

class AddPlayerForm extends StatefulWidget {
  const AddPlayerForm({super.key});

  @override
  State<AddPlayerForm> createState() => _AddPlayerFormState();
}

class _AddPlayerFormState extends State<AddPlayerForm> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlayerSelectionBloc, PlayerSelectionState>(
      listenWhen: (previous, current) =>
          previous.currentPlayerName != current.currentPlayerName &&
          current.currentPlayerName.isEmpty,
      listener: (context, state) {
        if (state.currentPlayerName.isEmpty) {
          _controller.clear();
        }
      },
      child: ListTile(
        onTap: () => _showAddPlayerDialog(context),
        trailing: const Icon(Icons.arrow_forward_ios),
        title: BlocBuilder<PlayerSelectionBloc, PlayerSelectionState>(
          builder: (context, state) {
            return Text(
              state.allPlayers.isEmpty
                  ? "Add a first player"
                  : "Add another player",
            );
          },
        ),
      ),
    );
  }

  void _showAddPlayerDialog(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (dialogContext) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(dialogContext).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Player Name",
                  border: OutlineInputBorder(),
                  hintText: "Enter player name",
                ),
                onChanged: (value) {
                  context.read<PlayerSelectionBloc>().add(
                    PlayerSelectionEvent.playerNameChanged(value),
                  );
                },
                onSubmitted: (_) {
                  _onAddPlayer(context);
                  Navigator.of(dialogContext).pop();
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _onAddPlayer(context);
                  Navigator.of(dialogContext).pop();
                },
                child: const Text("Add Player"),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  void _onAddPlayer(BuildContext context) {
    context.read<PlayerSelectionBloc>().add(
      const PlayerSelectionEvent.addPlayerPressed(),
    );
  }
}
