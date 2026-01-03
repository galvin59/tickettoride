---
description: Refactoring
auto_execution_mode: 1
---

Travaille sur le refactoring du code. J'ai une liste de tâches de refactoring classiques que je souhaite appliquer pour améliorer la qualité, la lisibilité et la maintenabilité du code.

Important : analyse tout le codebase et suggère moi une liste de refactoring. Mais tu attends mon autorisation pour la réaliser

Voici la liste des types de refactoring que je vise :

Le plus important : cherche toute simplification, workaround, contournement, bypass/skip, et TOUT FALLBACK qui ne respecte pas les best-practices du développement. Ce genre de choses n'est absolument pas toléré ! Je ne veux aucun fallback dans le code !

1.  **Renommage (Clarté) :** Identifier les variables, méthodes, classes, ou paramètres dont les noms pourraient être plus clairs, plus descriptifs, ou plus cohérents avec les conventions du projet. Proposer des alternatives.
2.  **Extraction de Méthode/Classe (SRP - Single Responsibility Principle) :** Identifier les méthodes ou classes qui sont trop longues, qui gèrent trop de responsabilités distinctes, ou qui pourraient bénéficier d'une décomposition en unités plus petites et plus ciblées. Suggérer comment les extraire.
3.  **Suppression de Code Mort :** Aider à identifier le code qui n'est plus utilisé (méthodes privées non appelées, variables inutilisées, code commenté obsolète, fonctionnalités désactivées de manière permanente).
4.  **Amélioration des Algorithmes (Performance) :** Si des portions de code semblent potentiellement inefficaces (ex: boucles imbriquées inutiles, opérations coûteuses répétées), suggérer des optimisations algorithmiques ou des approches plus performantes, tout en considérant la lisibilité.
5.  **Clarification des Conditions :** Identifier les expressions booléennes complexes, les `if/else if/else` imbriqués, ou les conditions difficiles à comprendre. Proposer des manières de les simplifier ou de les rendre plus explicites (ex: extraction en méthodes booléennes bien nommées, utilisation de tables de décision si approprié).
6.  **Introduction de Paramètres/Objets de Paramètres :** Identifier les méthodes avec un nombre excessif de paramètres. Suggérer de les regrouper dans un objet de paramètre (classe ou struct).
7.  **Remplacement de "Magic Numbers/Strings" par Constantes/Enums :** Identifier les nombres littéraux ou les chaînes de caractères qui ont une signification métier spécifique et qui sont utilisés directement dans le code. Proposer de les remplacer par des constantes nommées ou des énumérations.
8.  **Amélioration de la Gestion des Exceptions :** Revoir la manière dont les exceptions sont attrapées et gérées. S'assurer que les exceptions spécifiques sont attrapées plutôt que les exceptions génériques (comme `System.Exception`), que les informations utiles ne sont pas perdues, que les exceptions ne sont pas "avalées" silencieusement, et que les exceptions personnalisées sont utilisées de manière appropriée.
9.  **Consolidation de Fragments Conditionnels Dupliqués :** Identifier si des blocs de code similaires sont répétés à l'intérieur de différentes branches d'une structure conditionnelle (`if/else` ou `switch`). Suggérer comment mutualiser ce code.
10. **Vérification de la Cohérence :** Aider à identifier les incohérences dans le style de code, les conventions de nommage, ou les approches pour des tâches similaires à travers la base de code.
11. **Respect des Principes SOLID :** Analyser le code sous l'angle des principes SOLID (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion) et pointer les violations potentielles ou les zones d'amélioration.
12. Pour flutter, vérifier qu'une List<T> n'est utilisée pour un modèle mais que ce soit DelegatingList (ModelList<T>, quiver)
13. **Vérification de la configuration de l'API :** S'assurer que toutes les parties du code utilisent la source unique de vérité pour la configuration de l'API (`api_config.dart`). Identifier et corriger toute URL ou port hardcodé dans le code. Vérifier qu'aucune configuration alternative n'a été créée en dehors du fichier central.
14. Pour les APIs, vérifie que tous les chemins d'accès sont cohérents et suivent le même pattern. Vérifie que tous les services ont strictement la même structure. Vérifie que tous les repositories ont strictement la même structure. Vérifie que les mappers sont cohérents entre eux.
15. Pour le .net, vérifie qu'il n'y a aucune valeur par défaut pour aucun champ dans les modèles et que les modèles sont soit en required, soit en nullable, et n'utilisent pas les annotations. Vérifie que la déserialisation dans les DTOs des enums se fait toujours avec un converter.
16. Vérifie que tu n'utilises jamais de String à la place d'enums dans un modèle ou un DTO
17. Vérifie qu'aucun controleur ne renvoie de type anonyme mais toujours des DTOs, sauf exception justifiée et dans les bonnes pratiques
18. Vérifie qu'en dotnet core tu utilises toujours automapper, et jamais de mapping manuel