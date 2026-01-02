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
  String get addFirstPlayer =>
      _localizedValues[locale.languageCode]!['addFirstPlayer']!;
  String get addAnotherPlayer =>
      _localizedValues[locale.languageCode]!['addAnotherPlayer']!;
  String get welcomeToTicketToRide =>
      _localizedValues[locale.languageCode]!['welcomeToTicketToRide']!;
  String get appDescription =>
      _localizedValues[locale.languageCode]!['appDescription']!;
  String get createFirstPlayer =>
      _localizedValues[locale.languageCode]!['createFirstPlayer']!;
  String get about => _localizedValues[locale.languageCode]!['about']!;
  String get madeWithLove =>
      _localizedValues[locale.languageCode]!['madeWithLove']!;
  String get appStory => _localizedValues[locale.languageCode]!['appStory']!;
  String get credits => _localizedValues[locale.languageCode]!['credits']!;
  String get disclaimer =>
      _localizedValues[locale.languageCode]!['disclaimer']!;
  String get confirmNewGame =>
      _localizedValues[locale.languageCode]!['confirmNewGame']!;
  String get confirmNewGameDescription =>
      _localizedValues[locale.languageCode]!['confirmNewGameDescription']!;
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
      'addFirstPlayer': 'Add a first player',
      'addAnotherPlayer': 'Add another player',
      'welcomeToTicketToRide': 'Welcome to Ticket to Ride\nTrips Generator!',
      'appDescription':
          'This app is a companion for the board game Ticket to Ride Europe.\nIt generates random trips and is ideal if you are an experienced player who feels limited by the trips provided with the board game.\n\nAdd your players, draw your starting destinations, and track your routes in real time!',
      'createFirstPlayer': 'Create my first player',
      'about': 'About',
      'madeWithLove':
          'Made with ❤️ by a board game enthusiast, for board game enthusiasts!',
      'appStory':
          'This app was created because I love railway board games but sometimes felt limited by the destinations provided in the box. As an experienced player, I wanted more variety and randomness in our games.\n\nThat\'s why I built this companion app - to generate random trips and enhance the gaming experience for passionate players like you.',
      'credits': 'Credits:',
      'disclaimer':
          'This app is an unofficial companion for board games and is not affiliated with or endorsed by the original game publishers.',
      'confirmNewGame': 'Start a new game?',
      'confirmNewGameDescription':
          'All current game progress will be lost. Are you sure you want to start a new game?',
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
      'addFirstPlayer': 'Ajouter un premier joueur',
      'addAnotherPlayer': 'Ajouter un autre joueur',
      'welcomeToTicketToRide':
          'Bienvenue dans Ticket to Ride\nGénérateur de trajets !',
      'appDescription':
          'Cette application est une compagne pour le jeu de société Ticket to Ride Europe.\nElle génère des trajets aléatoires et est idéale si vous êtes un joueur expérimenté qui se sent limité par les trajets fournis avec le jeu de société.\n\nAjoutez vos joueurs, tirez vos destinations de départ, et suivez vos parcours en temps réel !',
      'createFirstPlayer': 'Créer mon premier joueur',
      'about': 'À propos',
      'madeWithLove':
          'Fait avec ❤️ par un passionné de jeux de société, pour les passionnés de jeux de société !',
      'appStory':
          'Cette application a été créée car j\'adore les jeux de société ferroviaires mais je me sentais parfois limité par les destinations fournies dans la boîte. En tant que joueur expérimenté, je voulais plus de variété et de aléatoire dans nos parties.\n\nC\'est pourquoi j\'ai construit cette application compagnon - pour générer des trajets aléatoires et améliorer l\'expérience de jeu pour des passionnés comme vous.',
      'credits': 'Crédits :',
      'disclaimer':
          'Cette application est un compagnon non officiel pour les jeux de société et n\'est pas affiliée ou approuvée par les éditeurs de jeux originaux.',
      'confirmNewGame': 'Commencer une nouvelle partie ?',
      'confirmNewGameDescription':
          'Toute la progression de la partie actuelle sera perdue. Êtes-vous sûr de vouloir commencer une nouvelle partie ?',
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
      'addFirstPlayer': 'Añadir un primer jugador',
      'addAnotherPlayer': 'Añadir otro jugador',
      'welcomeToTicketToRide':
          '¡Bienvenido a Ticket to Ride\nGenerador de rutas!',
      'appDescription':
          'Esta aplicación es una compañera del juego de mesa Ticket to Ride Europa.\nGenera rutas aleatorias y es ideal si eres un jugador experimentado que se siente limitado por las rutas proporcionadas con el juego de mesa.\n\n¡Añade tus jugadores, saca tus destinos de inicio y sigue tus rutas en tiempo real!',
      'createFirstPlayer': 'Crear mi primer jugador',
      'about': 'Acerca de',
      'madeWithLove':
          '¡Hecho con ❤️ por un entusiasta de los juegos de mesa, para entusiastas de los juegos de mesa!',
      'appStory':
          'Esta aplicación fue creada porque amo los juegos de mesa de trenes pero a veces me sentía limitado por los destinos proporcionados en la caja. Como jugador experimentado, quería más variedad y aleatoriedad en nuestros juegos.\n\nPor eso construí esta aplicación compañera - para generar rutas aleatorias y mejorar la experiencia de juego para jugadores apasionados como tú.',
      'credits': 'Créditos:',
      'disclaimer':
          'Esta aplicación es un compañero no oficial para juegos de mesa y no está afiliada ni respaldada por los editores de juegos originales.',
      'confirmNewGame': '¿Comenzar un nuevo juego?',
      'confirmNewGameDescription':
          'Todo el progreso del juego actual se perderá. ¿Estás seguro de que quieres comenzar un nuevo juego?',
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
      'addFirstPlayer': 'Aggiungi un primo giocatore',
      'addAnotherPlayer': 'Aggiungi un altro giocatore',
      'welcomeToTicketToRide':
          'Benvenuto in Ticket to Ride\nGeneratore di percorsi!',
      'appDescription':
          'Questa app è una compagnia del gioco da tavolo Ticket to Ride Europa.\nGenera percorsi casuali ed è ideale se sei un giocatore esperto che si sente limitato dai percorsi forniti con il gioco da tavolo.\n\nAggiungi i tuoi giocatori, estrai le tue destinazioni di partenza e segui i tuoi percorsi in tempo reale!',
      'createFirstPlayer': 'Crea il mio primo giocatore',
      'about': 'Informazioni',
      'madeWithLove':
          'Fatto con ❤️ da un appassionato di giochi da tavolo, per appassionati di giochi da tavolo!',
      'appStory':
          'Questa app è stata creata perché amo i giochi da tavolo ferroviari ma a volte mi sentivo limitato dalle destinazioni fornite nella scatola. Come giocatore esperto, volevo più varietà e casualità nei nostri giochi.\n\nPer questo ho costruito questa app compagnon - per generare percorsi casuali e migliorare l\'esperienza di gioco per giocatori appassionati come te.',
      'credits': 'Crediti:',
      'disclaimer':
          'Questa app è un compagno non ufficiale per i giochi da tavolo e non è affiliata o approvata dagli editori di giochi originali.',
      'confirmNewGame': 'Iniziare un nuovo gioco?',
      'confirmNewGameDescription':
          'Tutti i progressi del gioco attuale andranno persi. Sei sicuro di voler iniziare un nuovo gioco?',
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
