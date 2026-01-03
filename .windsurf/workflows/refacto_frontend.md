---
description: Refactoring systématique du frontend Flutter J'ai une place
auto_execution_mode: 1
---

# **PROMPT DE REFACTORING SYSTÉMATIQUE - FRONTEND FLUTTER**

## **OBJECTIF**
Analyser systématiquement la codebase Flutter (package `jai_une_place` + apps) pour identifier TOUTES les violations des patterns établis et garantir l'uniformité sans exception.

## **PRINCIPE FONDAMENTAL**
🚨 **ZERO FALLBACK - ZERO CONTOURNEMENT - ZERO EXCEPTION**  
Toute violation doit être identifiée et corrigée. Aucun compromis acceptable.

---

## **ARCHITECTURE GLOBALE**

### **Structure Monorepo**
```
apps/
├── packages/
│   └── jai_une_place/          # Package partagé (DTOs, Repositories, Enums, Converters)
├── user_mobile_app/            # Application mobile utilisateur
│   ├── lib/
│   │   ├── config/             # Router, Theme, Environment, ServiceLocator
│   │   ├── core/               # Constants, Services partagés, Widgets de base
│   │   ├── features/           # Features par domaine (auth, profile, trips, etc.)
│   │   ├── guards/             # Guards de navigation (AuthGuard)
│   │   ├── services/           # Services spécifiques à l'app
│   │   ├── widgets/            # Widgets partagés de l'app
│   │   └── main_*.dart         # Points d'entrée par flavor
│   └── integration_test/       # Tests d'intégration
└── admin_client_web/           # Application web admin
```

### **Règle d'import du package**
⚠️ **CRITIQUE** : Les apps importent UNIQUEMENT `package:jai_une_place/jai_une_place.dart`
- INTERDIT : `import "package:jai_une_place/src/..."` dans les apps
- Tous les exports doivent être déclarés dans `jai_une_place.dart`

---

## **SECTION 1: ENUMS - VÉRIFICATION COMPLÈTE**

### **RÈGLES À VÉRIFIER (basées sur rules_flutter.md)**

1. **LOCALISATION UNIQUE** : Tous les enums dans `/packages/jai_une_place/lib/src/enums/`
2. **NOMMAGE camelCase** : Valeurs d'enum en camelCase (ex: `userHome`, `tripGroup`)
3. **CONVERTER OBLIGATOIRE** : Chaque enum doit avoir un converter correspondant dans `/src/converters/`
4. **SÉRIALISATION JSON** : Utiliser `@JsonValue` ou converter pour mapper vers les valeurs backend (lowercase)
5. **EXPORT CENTRALISÉ** : Tous les enums exportés via `jai_une_place.dart`

### **COMMANDES D'ANALYSE AUTOMATIQUE**

```bash
# 1. Lister tous les enums
ls packages/jai_une_place/lib/src/enums/

# 2. Lister tous les converters
ls packages/jai_une_place/lib/src/converters/

# 3. Vérifier les enums sans converter (comparer les deux listes)
diff <(ls packages/jai_une_place/lib/src/enums/ | sed 's/.dart//' | sort) \
     <(ls packages/jai_une_place/lib/src/converters/ | sed 's/_converter.dart//' | sort)

# 4. Vérifier les enums avec valeurs numériques (INTERDIT sauf DayOfWeek flags)
grep -rn "= [0-9]" packages/jai_une_place/lib/src/enums/ --include="*.dart"

# 5. Vérifier les exports dans jai_une_place.dart
grep "export.*enums" packages/jai_une_place/lib/jai_une_place.dart
grep "export.*converters" packages/jai_une_place/lib/jai_une_place.dart
```

### **CHECKLIST DE VÉRIFICATION**

Pour chaque enum trouvé :
- [ ] Est-il dans `/src/enums/` ?
- [ ] A-t-il un converter dans `/src/converters/` ?
- [ ] Les valeurs sont-elles en camelCase ?
- [ ] Est-il exporté dans `jai_une_place.dart` ?
- [ ] Le converter est-il exporté dans `jai_une_place.dart` ?

### **VIOLATIONS CONNUES**

#### **À VÉRIFIER**
1. **Enums sans `@JsonValue`** : Seul `PoiType` utilise `@JsonValue`, les autres utilisent des converters manuels
2. **Cohérence de sérialisation** : Vérifier que tous les enums sérialisent en lowercase pour le backend

---

## **SECTION 2: DTOs - VÉRIFICATION DES PATTERNS FREEZED**

### **RÈGLES À VÉRIFIER**

1. **FREEZED OBLIGATOIRE** : Tous les DTOs utilisent `@freezed`
2. **LOCALISATION UNIQUE** : Tous les DTOs dans `/packages/jai_une_place/lib/src/dtos/`
3. **REQUIRED vs NULLABLE** : Utiliser `required` pour les champs obligatoires, `?` pour les optionnels
4. **PAS DE VALEURS PAR DÉFAUT** : Sauf cas justifiés (booléens optionnels API)
5. **CONVERTERS SUR ENUMS** : Tous les champs enum doivent avoir leur converter annoté
6. **EXPORT CENTRALISÉ** : Tous les DTOs exportés via `jai_une_place.dart`

### **COMMANDES D'ANALYSE**

```bash
# 1. Lister tous les DTOs
find packages/jai_une_place/lib/src/dtos -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart"

# 2. Détecter les @Default (à vérifier si justifiés)
grep -rn "@Default" packages/jai_une_place/lib/src/dtos/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart"

# 3. Détecter les champs String qui devraient être des enums
grep -rn "String type\|String role\|String status" packages/jai_une_place/lib/src/dtos/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart"

# 4. Vérifier les exports dans jai_une_place.dart
grep "export.*dtos" packages/jai_une_place/lib/jai_une_place.dart | wc -l

# 5. Vérifier les DTOs non exportés
diff <(find packages/jai_une_place/lib/src/dtos -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart" -exec basename {} \; | sort) \
     <(grep "export.*dtos" packages/jai_une_place/lib/jai_une_place.dart | sed "s/.*dtos\///" | sed "s/';//" | sort)
```

### **CHECKLIST**

Pour chaque DTO :
- [ ] Utilise `@freezed` ?
- [ ] Est dans `/src/dtos/` ?
- [ ] Pas de `@Default` injustifié ?
- [ ] Champs enum avec converter annoté ?
- [ ] Exporté dans `jai_une_place.dart` ?

### **VIOLATIONS CONNUES**

#### **À VÉRIFIER**
1. **`@Default` utilisés** : 6 occurrences trouvées - vérifier si justifiées (booléens API)
2. **`List<T>` vs `ModelList<T>`** : Selon rules_flutter.md, préférer `ModelList` (quiver) - actuellement `List<T>` utilisé partout

---

## **SECTION 3: REPOSITORIES - VÉRIFICATION DE L'UNIFORMITÉ**

### **RÈGLES À VÉRIFIER**

1. **INTERFACE + IMPL** : Chaque repository a une interface et une implémentation
2. **LOCALISATION** : Interfaces et implémentations dans `/src/repositories/`
3. **RETOUR Result<T, E>** : Toutes les méthodes retournent `Result<T, ApiException>`
4. **GESTION ERREURS** : Pattern uniforme `try/on ApiException catch`
5. **INJECTION DI** : Enregistrement via `dependency_injection.dart`
6. **PAS DE PRINT** : Utiliser logger, jamais `print()`

### **COMMANDES D'ANALYSE**

```bash
# 1. Lister les interfaces (fichiers sans _impl)
find packages/jai_une_place/lib/src/repositories -name "*.dart" ! -name "*_impl.dart" ! -name "repositories.dart" ! -name "dependency_injection.dart"

# 2. Lister les implémentations
find packages/jai_une_place/lib/src/repositories -name "*_impl.dart"

# 3. Vérifier que toutes les méthodes retournent Result
grep -rn "Future<" packages/jai_une_place/lib/src/repositories/ --include="*_impl.dart" | grep -v "Result<" | head -20

# 4. Détecter les print() (INTERDIT)
grep -rn "print(" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart"

# 5. Vérifier les catch génériques (devrait être ApiException)
grep -rn "catch (e)" packages/jai_une_place/lib/src/repositories/ --include="*.dart" | grep -v "ApiException"
```

### **CHECKLIST**

Pour chaque repository :
- [ ] Interface définie ?
- [ ] Implémentation `*_impl.dart` ?
- [ ] Toutes méthodes retournent `Result<T, ApiException>` ?
- [ ] Pattern `try/on ApiException catch` uniforme ?
- [ ] Enregistré dans `dependency_injection.dart` ?
- [ ] Pas de `print()` ?

### **VIOLATIONS CONNUES**

#### **À CORRIGER**
1. **Catch générique** : `admin_repository_impl.dart:292` utilise `catch (e)` au lieu de `on ApiException catch (e)`

---

## **SECTION 4: IMPORTS - VÉRIFICATION DES CONVENTIONS**

### **RÈGLES À VÉRIFIER**

1. **DOUBLE QUOTES** : Toujours `"package:..."` jamais `'package:...'`
2. **IMPORT CENTRALISÉ** : Les apps importent uniquement `package:jai_une_place/jai_une_place.dart`
3. **PAS D'IMPORTS INTERNES** : Jamais `package:jai_une_place/src/...` dans les apps

### **COMMANDES D'ANALYSE**

```bash
# 1. Compter les imports avec single quotes (VIOLATION)
grep -rn "'" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" | grep "import\|export" | wc -l

# 2. Compter les imports avec double quotes (CORRECT)
grep -rn '"' packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" | grep "import\|export" | wc -l

# 3. Détecter les imports internes dans les apps
grep -rn "import.*package:jai_une_place/src/" user_mobile_app/lib/ --include="*.dart"
```

### **VIOLATIONS CONNUES**

#### **MINEURE (STYLE)**
1. **Single quotes** : 232 imports avec single quotes vs 264 avec double quotes - incohérence de style à uniformiser progressivement

---

## **SECTION 5: SERVICES - VÉRIFICATION DE L'UNIFORMITÉ**

### **RÈGLES À VÉRIFIER**

1. **LOCALISATION** : Services dans `/src/services/`
2. **INJECTION DI** : Enregistrement via GetIt
3. **PAS DE PRINT** : Utiliser logger

### **COMMANDES D'ANALYSE**

```bash
# 1. Lister les services
find packages/jai_une_place/lib/src/services -name "*.dart"

# 2. Vérifier l'enregistrement DI
grep -rn "registerSingleton\|registerLazySingleton\|registerFactory" packages/jai_une_place/lib/src/
```

---

## **SECTION 6: MODELS - VÉRIFICATION DES PATTERNS**

### **RÈGLES À VÉRIFIER**

1. **FREEZED OBLIGATOIRE** : Tous les models utilisent `@freezed`
2. **LOCALISATION** : Models dans `/src/models/`
3. **EXPORT CENTRALISÉ** : Exportés via `jai_une_place.dart`

### **COMMANDES D'ANALYSE**

```bash
# 1. Lister les models
find packages/jai_une_place/lib/src/models -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart"

# 2. Vérifier les exports
grep "export.*models" packages/jai_une_place/lib/jai_une_place.dart
```

---

## **RAPPORT DE VIOLATIONS - FORMAT ATTENDU**

```
## 🔍 RAPPORT D'ANALYSE - [DATE]

### ❌ VIOLATIONS HAUTES
#### Repositories
- [FICHIER:LIGNE] Catch générique au lieu de ApiException

#### Gestion des erreurs
- [FICHIER:LIGNE] ScaffoldMessenger direct au lieu de ErrorHandlingService

### ⚠️ VIOLATIONS MINEURES
#### DTOs
- [FICHIER:LIGNE] @Default potentiellement injustifié

#### Style
- [FICHIER:LIGNE] Single quote au lieu de double quote

### ✅ ÉLÉMENTS CORRECTS
- [NOMBRE] enums avec converters
- [NOMBRE] repositories avec pattern Result<T, E>
- [NOMBRE] BLoCs avec états d'erreur

### 📋 PLAN DE CORRECTION
1. **Priorité Haute** : Corriger les catch génériques
2. **Priorité Haute** : Utiliser ErrorHandlingService partout
3. **Priorité Mineure** : Uniformiser les quotes
4. **Total estimé** : [NOMBRE] fichiers à modifier
```

---

## **COMMANDE D'EXÉCUTION COMPLÈTE**

```bash
cd /Users/Julien/CascadeProjects/j_ai_une_place/apps

echo "=== ANALYSE DES ENUMS ===" && \
ls packages/jai_une_place/lib/src/enums/ && \
echo "" && \
echo "=== ANALYSE DES CONVERTERS ===" && \
ls packages/jai_une_place/lib/src/converters/ && \
echo "" && \
echo "=== VIOLATIONS QUOTES (single quotes) ===" && \
grep -rn "'" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" | grep "import\|export" | wc -l && \
echo "" && \
echo "=== VIOLATIONS @Default ===" && \
grep -rn "@Default" packages/jai_une_place/lib/src/dtos/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" && \
echo "" && \
echo "=== VIOLATIONS CATCH GÉNÉRIQUE ===" && \
grep -rn "catch (e)" packages/jai_une_place/lib/src/repositories/ --include="*.dart" | grep -v "ApiException" && \
echo "" && \
echo "=== VIOLATIONS PRINT ===" && \
grep -rn "print(" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart"
```

---

## **SECTION 7: GESTION DES ERREURS**

### **ARCHITECTURE DES ERREURS**

#### **1. Exceptions API (Package `jai_une_place`)**
Localisation : `/packages/jai_une_place/lib/src/errors/api_exceptions.dart`

```dart
// Hiérarchie des exceptions
abstract class ApiException implements Exception {
  final String message;
  final String? errorCode;
  final String? details;
  final int statusCode;
}

// Exceptions spécialisées par code HTTP
class AuthenticationException extends ApiException {}  // 401
class ValidationException extends ApiException {}      // 400
class NotFoundException extends ApiException {}        // 404
class ConflictException extends ApiException {}        // 409
class TooManyRequestsException extends ApiException {} // 429
class PasswordChangeRequiredException extends ApiException {} // 422
class ServerException extends ApiException {}          // 500
class NetworkException extends ApiException {}         // 0 (pas de connexion)
```

#### **2. Result<T, E> (Pattern Either)**
Localisation : `/packages/jai_une_place/lib/src/utils/result.dart`

```dart
// Utilisation dans les repositories
Future<Result<UserDto, ApiException>> getUser() async {
  try {
    final response = await _apiClient.get(...);
    return Result.success(response);
  } on ApiException catch (e) {
    return Result.error(e);
  }
}

// Utilisation dans les BLoCs
result.fold(
  (user) => emit(UserLoaded(user)),
  (error) => emit(UserError(message: error.message)),
);
```

#### **3. États d'erreur dans les BLoCs**
```dart
// Pattern : État d'erreur avec message
sealed class ProfileState {}
class ProfileError extends ProfileState {
  final String message;
  final UserProfileDto? profile; // Optionnel : conserver les données précédentes
  ProfileError({required this.message, this.profile});
}
```

#### **4. Affichage des erreurs (UI)**
Localisation : `/user_mobile_app/lib/core/services/error_handling_service.dart`

```dart
// Service centralisé pour l'affichage des erreurs
class ErrorHandlingService {
  static void showErrorSnackBar(BuildContext context, String message);
  static void showSuccessSnackBar(BuildContext context, String message);
  static void showInfoSnackBar(BuildContext context, String message);
  static void showWarningSnackBar(BuildContext context, String message);
}

// Utilisation dans BlocListener
BlocListener<ProfileBloc, ProfileState>(
  listener: (context, state) {
    if (state is ProfileError) {
      ErrorHandlingService.showErrorSnackBar(context, state.message);
    } else if (state is ProfileUpdateSuccess) {
      ErrorHandlingService.showSuccessSnackBar(context, "Profil mis à jour");
    }
  },
)
```

### **RÈGLES À VÉRIFIER**

1. **EXCEPTIONS TYPÉES** : Utiliser les exceptions spécialisées, jamais `Exception` générique
2. **RESULT PATTERN** : Tous les repositories retournent `Result<T, ApiException>`
3. **CATCH SPÉCIFIQUE** : `on ApiException catch (e)`, jamais `catch (e)` générique
4. **ÉTATS D'ERREUR** : Chaque BLoC a un état `*Error` avec `message`
5. **AFFICHAGE CENTRALISÉ** : Utiliser `ErrorHandlingService`, jamais `ScaffoldMessenger` direct
6. **MESSAGES FRANÇAIS** : Messages d'erreur en français pour l'utilisateur

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier les catch génériques (VIOLATION)
grep -rn "catch (e)" packages/jai_une_place/lib/src/repositories/ --include="*.dart" | grep -v "ApiException"

# 2. Vérifier l'utilisation de ErrorHandlingService
grep -rn "ErrorHandlingService\|showErrorSnackBar" user_mobile_app/lib/features/ --include="*.dart"

# 3. Détecter les ScaffoldMessenger directs (à éviter)
grep -rn "ScaffoldMessenger.of" user_mobile_app/lib/features/ --include="*.dart"

# 4. Vérifier les états d'erreur dans les BLoCs
grep -rn "class.*Error extends" user_mobile_app/lib/features/ --include="*_state.dart"
```

### **CHECKLIST**

Pour chaque repository :
- [ ] Retourne `Result<T, ApiException>` ?
- [ ] Utilise `on ApiException catch (e)` ?
- [ ] Pas de `catch (e)` générique ?

Pour chaque BLoC :
- [ ] A un état `*Error` avec `message` ?
- [ ] Émet l'état d'erreur avec le message de l'exception ?

Pour chaque écran :
- [ ] Utilise `BlocListener` pour les erreurs ?
- [ ] Utilise `ErrorHandlingService` pour l'affichage ?
- [ ] Pas de `ScaffoldMessenger.of` direct ?

---

## **SECTION 8: BLoC - PATTERNS ET STRUCTURE**

### **RÈGLES À VÉRIFIER**

1. **STRUCTURE PAR FEATURE** : Chaque feature a son dossier `bloc/` avec `*_bloc.dart`, `*_event.dart`, `*_state.dart`
2. **SEALED CLASSES** : Events et States utilisent `sealed class` (Dart 3+)
3. **FREEZED POUR STATES COMPLEXES** : States avec données utilisent `@freezed sealed class`
4. **NOMMAGE** : `{Feature}Bloc`, `{Feature}Event`, `{Feature}State`
5. **INJECTION VIA GETIT** : BLoCs enregistrés dans `service_locator.dart`
6. **PAS DE LOGIQUE MÉTIER** : BLoCs orchestrent, la logique est dans les repositories

### **PATTERNS IDENTIFIÉS**

#### **Pattern 1 : Sealed class simple (sans Freezed)**
```dart
// auth_state.dart
sealed class AuthState {}
class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthAuthenticated extends AuthState {
  final UserLoginResponseDto user;
  AuthAuthenticated({required this.user});
}
```

#### **Pattern 2 : Freezed sealed class (états complexes)**
```dart
// trips_state.dart
@freezed
sealed class TripsState with _$TripsState {
  const factory TripsState({
    @Default([]) List<TripDto> activeDriverTrips,
    @Default(false) bool isLoadingActive,
  }) = _TripsState;
}
```

### **COMMANDES D'ANALYSE**

```bash
# 1. Lister tous les BLoCs
find user_mobile_app/lib/features -name "*_bloc.dart" ! -name "*.freezed.dart"

# 2. Vérifier les sealed classes
grep -rn "sealed class" user_mobile_app/lib/features/ --include="*_state.dart" --include="*_event.dart"

# 3. Vérifier les @freezed sur les states
grep -rn "@freezed" user_mobile_app/lib/features/ --include="*_state.dart"

# 4. Vérifier l'enregistrement GetIt des BLoCs
grep -rn "registerLazySingleton.*Bloc\|registerFactory.*Bloc" user_mobile_app/lib/config/service_locator.dart
```

### **CHECKLIST**

Pour chaque BLoC :
- [ ] Structure `bloc/`, `event.dart`, `state.dart` ?
- [ ] Events et States utilisent `sealed class` ?
- [ ] States complexes utilisent `@freezed` ?
- [ ] Enregistré dans GetIt (`registerLazySingleton` ou `registerFactory`) ?
- [ ] Pas de logique métier directe (délégué aux repositories) ?

---

## **SECTION 8: GETIT - INJECTION DE DÉPENDANCES**

### **RÈGLES À VÉRIFIER**

1. **FICHIER UNIQUE** : `service_locator.dart` dans `/config/`
2. **ORDRE D'ENREGISTREMENT** : Dépendances avant dépendants
3. **TYPES D'ENREGISTREMENT** :
   - `registerSingleton` : Instance unique créée immédiatement
   - `registerLazySingleton` : Instance unique créée au premier accès
   - `registerFactory` : Nouvelle instance à chaque accès
4. **ACCÈS** : `getIt<Type>()` ou `GetIt.instance<Type>()`
5. **PAS DE BLOCPROVIDER** : Utiliser GetIt partout, éviter BlocProvider sauf si nécessaire

### **PATTERN IDENTIFIÉ**

```dart
// service_locator.dart
final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // 1. Services externes (Supabase, Dio)
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);
  getIt.registerSingleton<Dio>(dio);
  
  // 2. Services internes
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(dio: getIt<Dio>()));
  
  // 3. Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt<ApiClient>(), getIt<SupabaseAuthService>()),
  );
  
  // 4. BLoCs (après leurs dépendances)
  getIt.registerLazySingleton<ProfileBloc>(
    () => ProfileBloc(getIt<ProfileRepository>(), getIt<PoiRepository>()),
  );
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<TripRepository>()));
}
```

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier tous les enregistrements
grep -rn "register" user_mobile_app/lib/config/service_locator.dart

# 2. Vérifier les accès GetIt dans l'app
grep -rn "getIt<\|GetIt.instance<" user_mobile_app/lib/ --include="*.dart" | grep -v ".freezed.dart"

# 3. Détecter les BlocProvider (à éviter si possible)
grep -rn "BlocProvider(" user_mobile_app/lib/ --include="*.dart"
```

---

## **SECTION 9: GO_ROUTER - NAVIGATION**

### **RÈGLES À VÉRIFIER**

1. **FICHIER UNIQUE** : `app_router.dart` dans `/config/`
2. **ROUTES CONSTANTES** : Toutes les routes définies comme `static const String`
3. **GUARDS** : Utiliser `redirect` pour la protection des routes
4. **REFRESH LISTENABLE** : Écouter les changements d'état auth via `GoRouterRefreshStream`
5. **NAVIGATION** : `context.go()` pour navigation, `context.push()` pour empiler

### **PATTERN IDENTIFIÉ**

```dart
// app_router.dart
class AppRouter {
  static const String anonymousHome = "/";
  static const String login = "/login";
  static const String home = "/home";

  static final GoRouter router = GoRouter(
    initialLocation: AppRouter.anonymousHome,
    redirect: AuthGuard.redirect,
    refreshListenable: GoRouterRefreshStream(GetIt.instance<AuthBloc>().stream),
    routes: [
      GoRoute(
        path: AppRouter.anonymousHome,
        builder: (context, state) => const AnonymousHomepage(),
      ),
      // ...
    ],
  );
}

// auth_guard.dart
class AuthGuard {
  static String? redirect(BuildContext context, GoRouterState state) {
    final authState = context.read<AuthBloc>().state;
    // Logique de redirection...
  }
}
```

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier les routes définies
grep -rn "static const String" user_mobile_app/lib/config/app_router.dart

# 2. Vérifier les usages de navigation
grep -rn "context.go\|context.push" user_mobile_app/lib/ --include="*.dart"

# 3. Détecter Navigator.push (à éviter pour les routes principales)
grep -rn "Navigator.push\|Navigator.pop" user_mobile_app/lib/ --include="*.dart"
```

### **CHECKLIST**

- [ ] Toutes les routes sont des constantes dans `AppRouter` ?
- [ ] `AuthGuard.redirect` gère tous les cas d'authentification ?
- [ ] `GoRouterRefreshStream` écoute le bon BLoC ?
- [ ] Navigation principale via `context.go()` ?
- [ ] `Navigator.push` réservé aux modales/pages temporaires ?

---

## **SECTION 10: FLAVORS - ENVIRONNEMENTS**

### **RÈGLES À VÉRIFIER**

1. **3 FLAVORS** : `local`, `dev`, `prod`
2. **FICHIERS .env** : `.env.local`, `.env.dev`, `.env.prod`
3. **POINTS D'ENTRÉE** : `main_local.dart`, `main_dev.dart`, `main_prod.dart`
4. **CONFIGURATION** : `pubspec.yaml` section `flavorizr:`
5. **FIREBASE** : `firebase_options_*.dart` par flavor

### **PATTERN IDENTIFIÉ**

```dart
// main_local.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting("fr_FR", null);
  await dotenv.load(fileName: '.env.local');
  app.main(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
}

// environment.dart
class Environment {
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static String get supabaseUrl => dotenv.env['SUPABASE_URL'] ?? '';
  // ...
}
```

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier les fichiers .env
ls -la user_mobile_app/.env.*

# 2. Vérifier les main_*.dart
ls -la user_mobile_app/lib/main_*.dart

# 3. Vérifier la config flavorizr
grep -A 30 "flavorizr:" user_mobile_app/pubspec.yaml
```

### **COMMANDE DE TEST**
```bash
# Tests d'intégration avec flavor local
flutter test integration_test/ --flavor local -d emulator-5558
```

---

## **SECTION 11: WIDGETS & UI - PATTERNS**

### **RÈGLES À VÉRIFIER**

1. **WIDGETS PARTAGÉS** : Dans `/lib/widgets/` (app) ou `/src/widgets/` (package)
2. **WIDGETS PAR FEATURE** : Dans `/features/{feature}/widgets/`
3. **SCREENS** : Dans `/features/{feature}/screens/`
4. **CONSTRUCTEUR** : `const` quand possible, `super.key` obligatoire
5. **THÈME** : Utiliser `AppTheme` de `/config/app_theme.dart`
6. **CONSTANTES** : Utiliser `AppColors`, `AppSizes` de `/core/constants/`

### **PATTERN WIDGET**

```dart
class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(/* ... */);
  }
}
```

### **PATTERN SCREEN AVEC BLOC**

```dart
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBloc, MyState>(
      listener: (context, state) {
        // Effets de bord (navigation, snackbar)
      },
      builder: (context, state) {
        return switch (state) {
          MyInitial() => const SizedBox.shrink(),
          MyLoading() => const Center(child: CircularProgressIndicator()),
          MyLoaded(:final data) => _buildContent(data),
          MyError(:final message) => _buildError(message),
        };
      },
    );
  }
}
```

### **COMMANDES D'ANALYSE**

```bash
# 1. Compter les widgets
grep -rn "StatelessWidget\|StatefulWidget" user_mobile_app/lib/ --include="*.dart" | wc -l

# 2. Vérifier les super.key
grep -rn "super.key" user_mobile_app/lib/ --include="*.dart" | head -20

# 3. Vérifier l'utilisation du thème
grep -rn "AppTheme\|Theme.of" user_mobile_app/lib/ --include="*.dart" | head -10
```

---

## **SECTION 12: SERVICES - PATTERNS**

### **RÈGLES À VÉRIFIER**

1. **SERVICES PACKAGE** : Dans `/packages/jai_une_place/lib/src/services/`
2. **SERVICES APP** : Dans `/user_mobile_app/lib/core/services/` ou `/features/{feature}/services/`
3. **INJECTION** : Via GetIt
4. **PAS DE PRINT** : Utiliser logger ou debugPrint en dev uniquement

### **SERVICES IDENTIFIÉS**

#### Package (`jai_une_place`)
- `ApiClient` : Client HTTP Dio
- `SupabaseAuthService` : Authentification Supabase
- `DioService` : Configuration Dio

#### App (`user_mobile_app`)
- `FcmService` : Firebase Cloud Messaging
- `PreferencesService` : SharedPreferences
- `ErrorHandlingService` : Gestion des erreurs UI
- `FormValidationService` : Validation des formulaires
- `AppLifecycleService` : Gestion du cycle de vie

---

## **SECTION 13: TESTS - PATTERNS**

### **RÈGLES À VÉRIFIER**

1. **TESTS UNITAIRES** : Dans `/test/` du package
2. **TESTS D'INTÉGRATION** : Dans `/integration_test/` de l'app
3. **FLAVOR** : Tests d'intégration avec `--flavor local`
4. **ÉMULATEUR** : Spécifier `-d emulator-5558`
5. **PAS D'ASSERTIONS SUR TEXTE** : Utiliser des Keys

### **COMMANDES DE TEST**

```bash
# Tests unitaires package
cd packages/jai_une_place && flutter test

# Tests d'intégration app
cd user_mobile_app && flutter test integration_test/ --flavor local -d emulator-5558

# Test spécifique
flutter test integration_test/auth_repository_integration_test.dart --flavor local -d emulator-5558
```

---

## **RAPPORT DE VIOLATIONS - FORMAT ATTENDU**

```
## 🔍 RAPPORT D'ANALYSE - [DATE]

### ❌ VIOLATIONS HAUTES
#### Repositories
- [FICHIER:LIGNE] Catch générique au lieu de ApiException

#### Gestion des erreurs
- [FICHIER:LIGNE] ScaffoldMessenger direct au lieu de ErrorHandlingService

### ⚠️ VIOLATIONS MINEURES
#### DTOs
- [FICHIER:LIGNE] @Default potentiellement injustifié

#### Style
- [FICHIER:LIGNE] Single quote au lieu de double quote

### ✅ ÉLÉMENTS CORRECTS
- [NOMBRE] enums avec converters
- [NOMBRE] repositories avec pattern Result<T, E>
- [NOMBRE] BLoCs avec états d'erreur

### 📋 PLAN DE CORRECTION
1. **Priorité Haute** : Corriger les catch génériques
2. **Priorité Haute** : Utiliser ErrorHandlingService partout
3. **Priorité Mineure** : Uniformiser les quotes
4. **Total estimé** : [NOMBRE] fichiers à modifier
```

---

## **COMMANDE D'EXÉCUTION COMPLÈTE**

```bash
cd /Users/Julien/CascadeProjects/j_ai_une_place/apps

echo "=== ANALYSE DES ENUMS ===" && \
ls packages/jai_une_place/lib/src/enums/ && \
echo "" && \
echo "=== ANALYSE DES CONVERTERS ===" && \
ls packages/jai_une_place/lib/src/converters/ && \
echo "" && \
echo "=== VIOLATIONS QUOTES (single quotes) ===" && \
grep -rn "'" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" | grep "import\|export" | wc -l && \
echo "" && \
echo "=== VIOLATIONS @Default ===" && \
grep -rn "@Default" packages/jai_une_place/lib/src/dtos/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" && \
echo "" && \
echo "=== VIOLATIONS CATCH GÉNÉRIQUE ===" && \
grep -rn "catch (e)" packages/jai_une_place/lib/src/repositories/ --include="*.dart" | grep -v "ApiException" && \
echo "" && \
echo "=== VIOLATIONS PRINT ===" && \
grep -rn "print(" packages/jai_une_place/lib/src/ --include="*.dart" | grep -v ".g.dart" | grep -v ".freezed.dart" && \
echo "" && \
echo "=== ANALYSE BLOCS ===" && \
find user_mobile_app/lib/features -name "*_bloc.dart" ! -name "*.freezed.dart" && \
echo "" && \
echo "=== ANALYSE SEALED CLASSES ===" && \
grep -rn "sealed class" user_mobile_app/lib/features/ --include="*_state.dart" --include="*_event.dart" | wc -l
```

---

## **FRÉQUENCE D'EXÉCUTION**
- **Après chaque grosse feature** : Analyse complète
- **Review de code** : Vérification ciblée des fichiers modifiés  
- **Mensuelle** : Analyse systématique de toute la codebase

**RAPPEL** : Le but est ZÉRO VIOLATION. Toute exception doit être justifiée et documentée.
