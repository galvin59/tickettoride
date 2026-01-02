# TTR Generator - Railway Board Game Companion

A Flutter companion application for railway board games enthusiasts, generating random trips and enhancing the gaming experience.

## Features

- **Player Management**: Add, select, and manage players
- **Random Trip Generation**: Generate random destinations for varied gameplay
- **Game Tracking**: Track player destinations and completion status
- **Score Calculation**: Automatic point calculation based on completed destinations
- **Multilingual Support**: Available in English, French, Spanish, and Italian
- **Responsive Design**: Optimized for all screen sizes
- **Dark/Light Theme**: Customizable theme with smooth transitions
- **Offline Mode**: Works completely offline without internet connection

## Architecture

This application follows Clean Architecture principles with:
- **Domain Layer**: Core models and business logic
- **Application Layer**: Use cases, DTOs, and interfaces
- **Infrastructure Layer**: Repositories and external services
- **Presentation Layer**: BLoC pattern for state management

## Tech Stack

- **Flutter**: UI framework
- **flutter_bloc**: State management
- **freezed**: Immutable models and union types
- **get_it**: Dependency injection
- **go_router**: Navigation
- **shared_preferences**: Local storage
- **logger**: Structured logging
- **url_launcher**: For external links
- **flutter_launcher_icons**: App icon generation

## Getting Started

### Prerequisites

- Flutter SDK 3.10.0 or higher
- Dart 3.10.0 or higher

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Generate code:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Testing

Run all tests:
```bash
flutter test
```

Run tests with coverage:
```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

Run specific test files:
```bash
# Core models
flutter test test/core/models/city_test.dart

# Core services
flutter test test/core/services/game_service_test.dart

# Player selection BLoC
flutter test test/features/player_selection/bloc/player_selection_bloc_test.dart

# Player trips BLoC
flutter test test/features/player_trips/bloc/player_trips_bloc_test.dart
```

### Test Coverage
- ✅ Core Models: City serialization/deserialization
- ✅ Core Services: Game creation logic
- ✅ Player Selection BLoC: State management
- ✅ Player Trips BLoC: Trip tracking logic

## Project Structure

```
lib/
├── core/
│   ├── di/              # Dependency injection
│   ├── l10n/            # Localization (EN, FR, ES, IT)
│   ├── models/          # Domain models
│   ├── repositories/    # Data repositories
│   ├── router/          # Navigation configuration
│   ├── services/        # Business logic services
│   └── theme/           # App theme and colors
├── features/
│   ├── player_selection/  # Player selection feature
│   ├── trip_selection/    # Destination selection feature
│   ├── game/              # Game screen feature
│   └── player_trips/      # Player trips tracking feature
├── shared/
│   └── widgets/         # Shared UI components
├── app.dart            # App widget
└── main.dart           # Entry point
```

## Localization

This app supports multiple languages:
- 🇬🇧 English (default)
- 🇫🇷 French
- 🇪🇸 Spanish
- 🇮🇹 Italian

To add a new language:
1. Add translations in `lib/core/l10n/app_localizations.dart`
2. Update supported locales in `lib/app.dart`
3. Run `flutter gen-l10n`

## App Icon

The app icon is generated using `flutter_launcher_icons`:
```bash
# Update icon.png in assets/images/
flutter pub run flutter_launcher_icons
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Guidelines
- Follow the existing code style
- Add tests for new features
- Update documentation
- Ensure all tests pass before submitting

## 🎯 About This Project

This application was created by a board game enthusiast for the community. It's designed to enhance the gaming experience by providing random trip generation and tracking features.

**Disclaimer**: This is an unofficial companion app and is not affiliated with or endorsed by any board game publishers.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
