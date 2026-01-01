import "package:flutter/material.dart";

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      icon: const Icon(Icons.language),
      tooltip: "Change language",
      onSelected: (Locale locale) {
        // TODO: Implement locale change
        // For now, we'll just show a snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Language change to ${locale.languageCode} - Restart app to apply",
            ),
            duration: const Duration(seconds: 2),
          ),
        );
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<Locale>(
            value: Locale('en', 'US'),
            child: Row(
              children: [
                Text('🇬🇧', style: TextStyle(fontSize: 24)),
                SizedBox(width: 12),
                Text('English'),
              ],
            ),
          ),
          const PopupMenuItem<Locale>(
            value: Locale('fr', 'FR'),
            child: Row(
              children: [
                Text('🇫🇷', style: TextStyle(fontSize: 24)),
                SizedBox(width: 12),
                Text('Français'),
              ],
            ),
          ),
          const PopupMenuItem<Locale>(
            value: Locale('es', 'ES'),
            child: Row(
              children: [
                Text('🇪🇸', style: TextStyle(fontSize: 24)),
                SizedBox(width: 12),
                Text('Español'),
              ],
            ),
          ),
          const PopupMenuItem<Locale>(
            value: Locale('it', 'IT'),
            child: Row(
              children: [
                Text('🇮🇹', style: TextStyle(fontSize: 24)),
                SizedBox(width: 12),
                Text('Italiano'),
              ],
            ),
          ),
        ];
      },
    );
  }
}
