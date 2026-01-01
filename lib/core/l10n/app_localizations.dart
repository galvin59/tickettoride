import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<Locale> supportedLocales = [
    Locale('en', 'US'), // English
    Locale('fr', 'FR'), // French
    Locale('es', 'ES'), // Spanish
    Locale('it', 'IT'), // Italian
  ];

  // General
  String get appName => _localizedValues[locale.languageCode]!['appName']!;
  String get ok => _localizedValues[locale.languageCode]!['ok']!;
  String get cancel => _localizedValues[locale.languageCode]!['cancel']!;
  String get confirm => _localizedValues[locale.languageCode]!['confirm']!;
  String get close => _localizedValues[locale.languageCode]!['close']!;

  // Player Selection
  String get playerSelectionTitle =>
      _localizedValues[locale.languageCode]!['playerSelectionTitle']!;
  String get randomDestinations =>
      _localizedValues[locale.languageCode]!['randomDestinations']!;
  String get randomDestinationsSubtitle =>
      _localizedValues[locale.languageCode]!['randomDestinationsSubtitle']!;
  String get selectAtLeastPlayers =>
      _localizedValues[locale.languageCode]!['selectAtLeastPlayers']!;
  String get startGame => _localizedValues[locale.languageCode]!['startGame']!;
  String get addPlayer => _localizedValues[locale.languageCode]!['addPlayer']!;
  String get playerName =>
      _localizedValues[locale.languageCode]!['playerName']!;
  String get playerNameRequired =>
      _localizedValues[locale.languageCode]!['playerNameRequired']!;
  String get playerNameEmpty =>
      _localizedValues[locale.languageCode]!['playerNameEmpty']!;
  String get playerAlreadyExists =>
      _localizedValues[locale.languageCode]!['playerAlreadyExists']!;

  // Game
  String get currentGame =>
      _localizedValues[locale.languageCode]!['currentGame']!;
  String get newGame => _localizedValues[locale.languageCode]!['newGame']!;
  String get destinations =>
      _localizedValues[locale.languageCode]!['destinations']!;
  String get drawNewDestinations =>
      _localizedValues[locale.languageCode]!['drawNewDestinations']!;

  // Trip Selection
  String get yourTurn => _localizedValues[locale.languageCode]!['yourTurn']!;
  String get chooseDestinations =>
      _localizedValues[locale.languageCode]!['chooseDestinations']!;
  String get chooseDestinationsDescription =>
      _localizedValues[locale.languageCode]!['chooseDestinationsDescription']!;
  String get longDestination =>
      _localizedValues[locale.languageCode]!['longDestination']!;
  String get optionalDestinations =>
      _localizedValues[locale.languageCode]!['optionalDestinations']!;
  String get selectAtLeast =>
      _localizedValues[locale.languageCode]!['selectAtLeast']!;
  String get destinationsForPlayer =>
      _localizedValues[locale.languageCode]!['destinationsForPlayer']!;

  // Player Trips
  String get completed => _localizedValues[locale.languageCode]!['completed']!;

  // Errors
  String get error => _localizedValues[locale.languageCode]!['error']!;
  String get failedToLoadData =>
      _localizedValues[locale.languageCode]!['failedToLoadData']!;
  String get failedToDrawDestinations =>
      _localizedValues[locale.languageCode]!['failedToDrawDestinations']!;

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appName': 'Ticket to Ride',
      'ok': 'OK',
      'cancel': 'Cancel',
      'confirm': 'Confirm',
      'close': 'Close',
      'playerSelectionTitle': 'Player Selection',
      'randomDestinations': 'Random Destinations',
      'randomDestinationsSubtitle':
          'Draw random destinations for Ticket to Ride Europe',
      'selectAtLeastPlayers': 'Select at least 2 players in the list below',
      'startGame': 'START GAME',
      'addPlayer': 'Add Player',
      'playerName': 'Player Name',
      'playerNameRequired': 'Player name is required',
      'playerNameEmpty': 'Player name cannot be empty',
      'playerAlreadyExists': 'A player with this name already exists',
      'currentGame': 'Current Game',
      'newGame': 'New Game',
      'destinations': 'destinations',
      'drawNewDestinations': 'Draw new destinations',
      'yourTurn': 'Your turn',
      'chooseDestinations': 'Choose your destinations',
      'chooseDestinationsDescription':
          'Choose your destinations and validate before giving the phone to next player',
      'longDestination': 'Long destination',
      'optionalDestinations': 'Optional destinations',
      'selectAtLeast': 'Select at least',
      'destinationsForPlayer': 'Destinations for player',
      'completed': 'COMPLETED',
      'error': 'Error',
      'failedToLoadData': 'Failed to load game data',
      'failedToDrawDestinations': 'Failed to draw destinations',
    },
    'fr': {
      'appName': 'Ticket to Ride',
      'ok': 'OK',
      'cancel': 'Annuler',
      'confirm': 'Confirmer',
      'close': 'Fermer',
      'playerSelectionTitle': 'Sélection des joueurs',
      'randomDestinations': 'Destinations aléatoires',
      'randomDestinationsSubtitle':
          'Tirez des destinations aléatoires pour Ticket to Ride Europe',
      'selectAtLeastPlayers':
          'Sélectionnez au moins 2 joueurs dans la liste ci-dessous',
      'startGame': 'COMMENCER LA PARTIE',
      'addPlayer': 'Ajouter un joueur',
      'playerName': 'Nom du joueur',
      'playerNameRequired': 'Le nom du joueur est requis',
      'playerNameEmpty': 'Le nom du joueur ne peut pas être vide',
      'playerAlreadyExists': 'Un joueur avec ce nom existe déjà',
      'currentGame': 'Partie en cours',
      'newGame': 'Nouvelle partie',
      'destinations': 'destinations',
      'drawNewDestinations': 'Tirer de nouvelles destinations',
      'yourTurn': 'À votre tour',
      'chooseDestinations': 'Choisissez vos destinations',
      'chooseDestinationsDescription':
          'Choisissez vos destinations et validez avant de passer le téléphone au joueur suivant',
      'longDestination': 'Destination longue',
      'optionalDestinations': 'Destinations optionnelles',
      'selectAtLeast': 'Sélectionnez au moins',
      'destinationsForPlayer': 'Destinations du joueur',
      'completed': 'TERMINÉ',
      'error': 'Erreur',
      'failedToLoadData': 'Échec du chargement des données du jeu',
      'failedToDrawDestinations': 'Échec du tirage des destinations',
    },
    'es': {
      'appName': 'Ticket to Ride',
      'ok': 'OK',
      'cancel': 'Cancelar',
      'confirm': 'Confirmar',
      'close': 'Cerrar',
      'playerSelectionTitle': 'Selección de jugadores',
      'randomDestinations': 'Destinos aleatorios',
      'randomDestinationsSubtitle':
          'Saca destinos aleatorios para Ticket to Ride Europa',
      'selectAtLeastPlayers':
          'Selecciona al menos 2 jugadores en la lista de abajo',
      'startGame': 'COMENZAR JUEGO',
      'addPlayer': 'Añadir jugador',
      'playerName': 'Nombre del jugador',
      'playerNameRequired': 'El nombre del jugador es requerido',
      'playerNameEmpty': 'El nombre del jugador no puede estar vacío',
      'playerAlreadyExists': 'Ya existe un jugador con este nombre',
      'currentGame': 'Juego actual',
      'newGame': 'Nuevo juego',
      'destinations': 'destinos',
      'drawNewDestinations': 'Sacar nuevos destinos',
      'yourTurn': 'Tu turno',
      'chooseDestinations': 'Elige tus destinos',
      'chooseDestinationsDescription':
          'Elige tus destinos y valida antes de pasar el teléfono al siguiente jugador',
      'longDestination': 'Destino largo',
      'optionalDestinations': 'Destinos opcionales',
      'selectAtLeast': 'Selecciona al menos',
      'destinationsForPlayer': 'Destinos del jugador',
      'completed': 'COMPLETADO',
      'error': 'Error',
      'failedToLoadData': 'Error al cargar datos del juego',
      'failedToDrawDestinations': 'Error al sacar destinos',
    },
    'it': {
      'appName': 'Ticket to Ride',
      'ok': 'OK',
      'cancel': 'Annulla',
      'confirm': 'Conferma',
      'close': 'Chiudi',
      'playerSelectionTitle': 'Selezione giocatori',
      'randomDestinations': 'Destinazioni casuali',
      'randomDestinationsSubtitle':
          'Estrai destinazioni casuali per Ticket to Ride Europa',
      'selectAtLeastPlayers':
          'Seleziona almeno 2 giocatori nella lista sottostante',
      'startGame': 'INIZIA GIOCO',
      'addPlayer': 'Aggiungi giocatore',
      'playerName': 'Nome del giocatore',
      'playerNameRequired': 'Il nome del giocatore è richiesto',
      'playerNameEmpty': 'Il nome del giocatore non può essere vuoto',
      'playerAlreadyExists': 'Esiste già un giocatore con questo nome',
      'currentGame': 'Gioco attuale',
      'newGame': 'Nuovo gioco',
      'destinations': 'destinazioni',
      'drawNewDestinations': 'Estrai nuove destinazioni',
      'yourTurn': 'Tuo turno',
      'chooseDestinations': 'Scegli le tue destinazioni',
      'chooseDestinationsDescription':
          'Scegli le tue destinazioni e valida prima di passare il telefono al giocatore successivo',
      'longDestination': 'Destinazione lunga',
      'optionalDestinations': 'Destinazioni opzionali',
      'selectAtLeast': 'Seleziona almeno',
      'destinationsForPlayer': 'Destinazioni del giocatore',
      'completed': 'COMPLETATO',
      'error': 'Errore',
      'failedToLoadData': 'Errore nel caricare i dati del gioco',
      'failedToDrawDestinations': 'Errore nell\'estrarre le destinazioni',
    },
  };
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.any(
      (supportedLocale) => supportedLocale.languageCode == locale.languageCode,
    );
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
