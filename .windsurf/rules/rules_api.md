---
trigger: always_on
---

<langage>
1. Utilise C# 13 (ou la version correspondant à .NET 9).
2. Génère du code et des commenaitres en anglais uniquement.
3. Les messages utilisateurs doivent par contre être en français
4. Applique la convention PascalCase pour tous les noms publics.
</langage>

<structure>
1. L’architecture suit une organisation en dossiers : Controllers, Providers, Repositories.
2. Se référer systématiquement à la documentation du projet pour toute règle d’organisation ou de comportement spécifique.
3. Évite de modifier les structures sans vérifier la documentation.
</structure>

<champs_nullable>
Les champs non nullable dans le modèle de données (data_models) doivent être de type required. Globalement, il ne doit jamais y avoir de constructeur par défaut de type public string LastName { get; set; } = string.Empty;
Cela vaut aussi pour les champs de type DateTime (pas de valeurs par défaut "= DateTime.UtcNow" sauf à la rigueur pour CreatedAt et UpdatedAt où cela a du sens, les champs de type boolean, int, etc ...
De manière globale, si un champ n'est pas nullable il DOIT etre required dans le modèle
Dans AppDBContext, ne pas rajouter de IsRequired() inutiles pour les champs non nullable
</champs_nullable>

<outils>
1. Utilise Entity Framework Core pour l'accès aux données.
2. Utilise AutoMapper pour les mappings entre entités et DTOs.
3. Utilise Serilog pour la journalisation avec des logs structurés.
4. Configure et injecte les dépendances via l'injection de dépendance native .NET.
</outils>

<langage_features>
1. Utilise les dernières fonctionnalités du langage disponibles avec C# 13.
2. Privilégie LINQ et pattern matching lorsque pertinent.
3. Autorise l’usage des records, mais aussi des classes classiques selon le contexte.
4. Les enums doivent toujours être des strings, jamais de valeurs numériques. Idem pour le stockage en base avec EFCore, les enums doivent toujours être stockées dans les tables en tant que string
</langage_features>

<best_practices>
1. Évite toute duplication de code (principes DRY).
2. Applique les principes SOLID.
3. Évite les effets de bord inattendus (fonctions pures quand possible).
4. Ne pas laisser de code mort, de TODO non traités ou de console logs temporaires.
5. Organise le code en fichiers cohérents, aux responsabilités claires.
6. Préfère l’injection de dépendance à la création manuelle d’objets.
7. Ajoute des commentaires uniquement si le code n’est pas auto-explicite.
8. Crée un fichier par classe, nomme toujours le fichier selon le nom de la classe qu'il contient
</best_practices>

<api>
Les controleurs ne doivent jamais renvoyer de type anonymes. Toujours renvoyer un DTO
Les controleurs doivent gérer les exceptions de manière cohérente, toujours de la même façon, il ne doit pas y avoir de disparité entre les contrôleurs
</api>

<file_locations>
Tous les modèles dans MyProject.Domain/models
Tous les enums dans MyProject.Domain/enums
</file_locations>

<tests>
Ne JAMAIS faire d'assertion sur du texte. 
Ne JAMAIS rechercher un élément par du texte, toujours utiliser les KEYS
Lorsque tu essayes de corriger un test, ne JAMAUS modifier le code source en dehors des tests sans mon autorisation explicite, après m'avoir expliqué pourquoi tu es certain que le problème vient de l'app et non du test
</tests>