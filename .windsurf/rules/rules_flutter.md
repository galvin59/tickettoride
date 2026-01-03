---
trigger: always_on
---

Quand tu codes en Flutter

<general>
Important : quand tu crées du code, vérifie systématiquement le codebase existant pour vérifier les patterns utilisés. Par exemple, si tu crées un BLOC, recherche les BLOCs existants pour utiliser exactement le même pattern. Ce n'est qu'un exemple, cela doit être appliqué SYSTEMATIQUEMENT quelque soit le code que tu crées
DRY (Don't Repeat Yourself): Évite activement la duplication de code. Factoriser la logique commune dans des fonctions, des classes utilitaires, des widgets réutilisables ou des services.
Principes SOLID (Adaptés):
SRP: Chaque classe/widget/BLoC/fonction doit avoir une responsabilité unique et bien définie.
OCP: Les entités logicielles (classes, modules, fonctions) doivent être ouvertes à l'extension, mais fermées à la modification (ex: via héritage, composition, interfaces).
LSP: Les sous-types doivent être substituables à leurs types de base (important pour l'héritage de widgets ou de classes).
ISP: Préférer des interfaces petites et spécifiques plutôt que des interfaces monolithiques (pertinent pour les abstract class des repositories/services).
DIP: Les modules de haut niveau ne doivent pas dépendre des modules de bas niveau. Les deux doivent dépendre d'abstractions. Les abstractions ne doivent pas dépendre des détails. (Ex: BLoC dépend de l'interface Repository, pas de l'implémentation).
Fonctions Pures: Privilégier les fonctions pures (pas d'effets de bord) lorsque c'est possible, surtout pour la logique de transformation de données ou les utilitaires.
Propreté du Code: Ne pas laisser de code mort, de commentaires //TODO non adressés, ou d'appels print() (utiliser le logger) dans le code mergé.
Organisation des Fichiers: Fichiers cohérents avec des responsabilités claires. Un widget principal par fichier, une classe de modèle freezed par fichier, un BLoC/Cubit avec ses états/événements (parfois regroupés) par fonctionnalité.
</general>

<librairies>
TOUJOURS vérifier en ligne la dernière version des librairies avant de les ajouter à pubspec.yaml
Injection de Dépendances: Toujours utiliser get_it pour obtenir des instances de services, repositories, ou BLoCs/Cubits plutôt que de les instancier manuellement dans les classes consommatrices.
Utilisation de dio encapsulé dans des Repositories.
Concernant freezed :
- TOUJOURS utiliser fromJson et toJson des classes Freezed, ne jamais faire de parsing manuel ! On ne fait JAMAIS de deserialisation dans un repository !
- Modèles de Données & Sérialisation: Utilise freezed pour les modèles immuables et json_serializable pour la (dé)sérialisation JSON.
Journalisation (Logging): Utilise le package logger (ou un équivalent configuré) pour une journalisation structurée et configurable par environnement. Éviter print() en production.
Injection de Dépendances: Utilise get_it pour l'enregistrement et la résolution des dépendances (BLoCs, Repositories, Services).
</librairies>

<nullability>
Null Safety Dart: Les types non-nullable en Dart doivent toujours avoir une valeur valide.
Modèles freezed:
Les champs qui sont logiquement requis pour la validité d'un modèle doivent être déclarés comme required dans le constructeur freezed.
Éviter les valeurs par défaut "vides" pour les types non-nullable (ex: String myField = '' si myField ne peut pas être vide). Si un champ peut être absent, le rendre nullable (String? myField).
Pour les champs de date/heure comme createdAt ou updatedAt dans les modèles où une valeur par défaut au moment de la création a du sens, cela peut être géré dans la logique métier (ex: Repository ou BLoC) lors de la création de l'objet, plutôt que par une valeur par défaut directement dans le modèle freezed si cela complique son usage.
En résumé : si un champ d'un modèle freezed est non-nullable, il doit être fourni lors de l'instanciation, typiquement via un paramètre de constructeur marqué required.
</nullability>

<navigation>
RÈGLE ABSOLUE : Ne JAMAIS utiliser Navigator directement pour la navigation de pages !
Toujours utiliser go_router :
- `context.push('/route')` au lieu de `Navigator.push()`
- `context.pop()` au lieu de `Navigator.pop()` pour les pages
- `context.go('/route')` pour remplacer la pile de navigation
- `context.pushReplacement('/route')` au lieu de `Navigator.pushReplacement()`
Exception unique : `Navigator.of(dialogContext).pop(value)` est autorisé UNIQUEMENT pour fermer des dialogues (`showDialog`) ou des bottom sheets (`showModalBottomSheet`) avec retour de valeur, car ces composants ne font pas partie de go_router.
</navigation>

<architecture>
Architecture Applicative: utilsiaiton de monorepo avec librairies commune sur laquelle peuvent s'appuyer plusieurs applications
<librairie_commune>: models/, repositories/ (interfaces & implémentations), services/.
Applications (apps/...): Structure par fonctionnalités (features/) contenant bloc/ (ou cubit/), screens/ (ou pages/), widgets/.
Référence à la Documentation: Se référer systématiquement à la documentation du projet Flutter pour toute règle d'organisation ou de comportement spécifique.
Modification des Structures: Éviter de modifier les structures de dossiers ou l'architecture de base sans discussion et mise à jour préalable de la documentation de référence du projet.
Il est INTERDIT d'importer autre chose que import "package:my_project_core/my_project_core.dart" dans les applications, c'est à dire de faire référence directement à un fichier de my_project_core. Tous les fichiers doivent être exportés via my_project_core.dart
Règle BLoC + DI :
- Si vous utilisez GetIt, utilisez getIt<MonBloc>() partout
- Évitez BlocProvider sauf si nécessaire
- Ne créez qu'une seule instance de BLoC
Pour les modèles, toujours utiliser DelegatingList (ModelList<T>, quiver) plutôt que List<T>
</architecture>

<tests>
Ne JAMAIS faire d'assertion sur du texte. 
Ne JAMAIS rechercher un élément par du texte, toujours utiliser les KEYS. Si tu dois rajouter des KEYS dans le fichier à tester, tu peux le faire après m'avoir demandé l'autorisation
Lorsque tu essayes de corriger un test, ne JAMAUS modifier le code source en dehors des tests sans mon autorisation explicite, après m'avoir expliqué pourquoi tu es certain que le problème vient de l'app et non du test
Tests d'Erreurs: Ne JAMAIS tester les erreurs en utilisant le texte des messages d'erreur sauf si tu ne peux pas faire autrement. 
</tests>

<langue>
Anglais Uniquement: Tout le code (commentaires, noms de variables, classes, fichiers) doit être en anglais.
Commentaires: Ajouter des commentaires Dart Doc (///) pour les APIs publiques (classes, méthodes) et des commentaires // pour clarifier une logique complexe uniquement si le code n'est pas suffisamment auto-explicite.
</langue>

<conventions>
TOUJOURS utiliser des double quotes, notamment dans les imports, JAMAIS de single quotes
Conventions de Cas (Casing):
PascalCase pour les noms de classes, enums, extensions, typedefs (ex: UserAuthBloc, OrderStatus).
camelCase pour les méthodes, fonctions, variables et paramètres publics/privés (ex: fetchUserData, isLoading).
</conventions>

<nommage>
snake_case.dart pour les noms de fichiers (ex: user_repository.dart).
Un Fichier par Entité Principale: Chaque classe publique principale (Widget, BLoC, Modèle freezed, Service) doit être dans son propre fichier. Le nom du fichier doit correspondre au nom de la classe principale qu'il contient, en snake_case.dart. (Les classes d'état/événement BLoC peuvent parfois être regroupées avec leur BLoC si elles sont petites et très liées).
</nommage>

<dart>
Version Dart: Utilise la dernière version stable de Dart fournie avec le SDK Flutter actuel du projet.
Fonctionnalités Dart Modernes: Utilise les dernières fonctionnalités stables du langage Dart (ex: records, pattern matching, enhanced enums, class modifiers si applicables).
Collections & LINQ: Privilégie les méthodes fonctionnelles sur les collections (map, where, fold, etc.) et le pattern matching lorsque cela améliore la lisibilité et la maintenabilité.
Modèles de Données: Utilise freezed pour générer des classes de données immuables (similaires aux records C# pour de nombreux cas d'usage). Les classes Dart classiques sont utilisées pour les BLoCs, services, widgets, etc.
</dart>