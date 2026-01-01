# Ticket to Ride: Europe - Companion App V2

A Flutter companion application for the Ticket to Ride: Europe board game.

## Features

- **Player Management**: Add, select, and manage players
- **Destination Selection**: Draw and select long and short destinations
- **Game Tracking**: Track player destinations and completion status
- **Score Calculation**: Automatic point calculation based on completed destinations

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

Run specific test:
```bash
flutter test test/core/models/city_test.dart
```

## Project Structure

```
lib/
├── core/
│   ├── di/              # Dependency injection
│   ├── models/          # Domain models
│   ├── repositories/    # Data repositories
│   ├── router/          # Navigation configuration
│   └── services/        # Business logic services
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

## License

This project is for educational purposes.
