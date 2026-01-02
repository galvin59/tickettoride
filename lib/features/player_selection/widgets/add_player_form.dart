import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:ttr_app/core/l10n/app_localizations.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_bloc.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_event.dart";
import "package:ttr_app/features/player_selection/bloc/player_selection_state.dart";

void showAddPlayerDialog(BuildContext context) {
  final bloc = context.read<PlayerSelectionBloc>();

  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (dialogContext) =>
        BlocProvider.value(value: bloc, child: const _AddPlayerDialog()),
  );
}

class AddPlayerForm extends StatelessWidget {
  const AddPlayerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _showAddPlayerDialog(context),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: BlocBuilder<PlayerSelectionBloc, PlayerSelectionState>(
        builder: (context, state) {
          return Text(
            state.allPlayers.isEmpty
                ? AppLocalizations.of(context)!.addFirstPlayer
                : AppLocalizations.of(context)!.addAnotherPlayer,
          );
        },
      ),
    );
  }

  void _showAddPlayerDialog(BuildContext context) {
    final bloc = context.read<PlayerSelectionBloc>();

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (dialogContext) =>
          BlocProvider.value(value: bloc, child: const _AddPlayerDialog()),
    );
  }
}

class _AddPlayerDialog extends StatefulWidget {
  const _AddPlayerDialog();

  @override
  State<_AddPlayerDialog> createState() => _AddPlayerDialogState();
}

class _AddPlayerDialogState extends State<_AddPlayerDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addPlayer() {
    context.read<PlayerSelectionBloc>().add(
      const PlayerSelectionEvent.addPlayerPressed(),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(
              labelText: l10n.playerName,
              border: const OutlineInputBorder(),
              hintText: l10n.playerName,
            ),
            onChanged: (value) {
              context.read<PlayerSelectionBloc>().add(
                PlayerSelectionEvent.playerNameChanged(value),
              );
            },
            onSubmitted: (_) => _addPlayer(),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: _addPlayer, child: Text(l10n.addPlayer)),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
