import "package:flutter/material.dart";
import "package:ttr_app/core/models/player.dart";

class PlayerListItem extends StatelessWidget {
  final Player player;
  final bool isSelected;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const PlayerListItem({
    super.key,
    required this.player,
    required this.isSelected,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(value: isSelected, onChanged: (_) => onToggle()),
      title: Text(
        player.name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () => _showDeleteConfirmation(context),
      ),
      onTap: onToggle,
    );
  }

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text("Delete Player"),
        content: Text("Are you sure you want to delete ${player.name}?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              onDelete();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}
