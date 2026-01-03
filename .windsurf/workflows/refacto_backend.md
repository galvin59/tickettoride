---
description: Refactoring systématique du backend J'ai une place
auto_execution_mode: 1
---

# **PROMPT DE REFACTORING SYSTÉMATIQUE - BACKEND .NET**

## **OBJECTIF**
Analyser systématiquement la codebase backend pour identifier TOUTES les violations des patterns établis et garantir l'uniformité sans exception.

## **PRINCIPE FONDAMENTAL**
🚨 **ZERO FALLBACK - ZERO CONTournEMENT - ZERO EXCEPTION**  
Toute violation doit être identifiée et corrigée. Aucun compromis acceptable.

---

## **SECTION 1: ENUMS - VÉRIFICATION COMPLÈTE**

### **RÈGLES À VÉRIFIER (basées sur rules_api.md et api_project_structure.md)**

1. **TYPE STRING OBLIGATOIRE** : Tous les enums doivent être de type `string`, JAMAIS de valeurs numériques
2. **CONVERTER EF CORE** : Tous les enums doivent avoir `HasConversion<string>()` dans AppDbContext
3. **LOCALISATION UNIQUE** : Tous les enums doivent être dans `/J1P.Domain/Enums/`
4. **NOMMAGE COHÉRENT** : PascalCase pour les noms, valeurs en PascalCase (sans `= 0, = 1`)
5. **UTILISATION FORCÉE** : Jamais de `string` à la place d'enum dans les modèles/DTOs

### **COMMANDES D'ANALYSE AUTOMATIQUE**

```bash
# 1. Détecter tous les enums avec valeurs numériques (INTERDIT)
find . -name "*.cs" -path "*/Domain/Enums/*" -exec grep -l "= [0-9]" {} \;

# 2. Lister tous les enums dans la codebase
find . -name "*.cs" -exec grep -l "enum " {} \; | grep -E "(Domain|Application|Infrastructure|Api)"

# 3. Vérifier la configuration EF Core des converters
grep -r "HasConversion<string>" J1P.Infrastructure/Persistence/Data/AppDbContext.cs

# 4. Détecter les propriétés string qui devraient être des enums
grep -r "public string.*Type\|public string.*Role\|public string.*Status\|public string.*Level" J1P.Application/DTOs/ --include="*.cs"
grep -r "public string.*Type\|public string.*Role\|public string.*Status\|public string.*Level" J1P.Domain/Entities/ --include="*.cs"

# 5. Vérifier les enums hors de /Domain/Enums/
find . -name "*.cs" -exec grep -l "enum " {} \; | grep -v "/Domain/Enums/" | grep -v "obj/" | grep -v "bin/"
```

### **CHECKLIST DE VÉRIFICATION MANUELLE**

Pour chaque enum trouvé :
- [ ] Est-ce un `enum string` (pas de `: int`) ?
- [ ] A-t-il des valeurs numériques (`= 0, = 1`) ? → **VIOLATION CRITIQUE**
- [ ] Est-il dans `/J1P.Domain/Enums/` ?
- [ ] A-t-il `HasConversion<string>()` dans AppDbContext ?
- [ ] Les valeurs suivent-elles une convention cohérente ?

Pour chaque propriété `string` trouvée :
- [ ] Existe-t-il un enum correspondant dans `/Domain/Enums/` ?
- [ ] Cette propriété représente-t-elle un état/statut/role limité ?
- [ ] Devrait-elle être remplacée par l'enum correspondant ?

### **VIOLATIONS À CORRIGER (basées sur l'analyse actuelle)**

#### **CRITIQUES**
1. **Enums numériques** : `ConversationType`, `MessageType`, `ParticipantRole`
2. **Strings au lieu d'enums** : `ConversationDto.Type`, `MessageDto.Type`, `ConversationParticipantDto.Role`

#### **POTENTIELLES**
1. Propriétés `string` avec suffixes `Type`, `Role`, `Status`, `Level`
2. Enums définis hors de `/Domain/Enums/`
3. Enums sans `HasConversion<string>()`

---

## **SECTION 2: SERVICES - VÉRIFICATION DE L'UNIFORMITÉ**

### **RÈGLES À VÉRIFIER**

1. **STRUCTURE UNIFORME** : Tous les services suivent exactement la même structure
2. **INTERFACES DANS APPLICATION** : Toutes les interfaces dans `/J1P.Application/Interfaces/Services/`
3. **IMPLÉMENTATIONS DANS APPLICATION** : Toutes les implémentations dans `/J1P.Application/Services/`
4. **INJECTION DE DÉPENDANCES** : Enregistrement cohérent dans `ServiceCollectionExtensions`
5. **GESTION DES EXCEPTIONS** : Pattern uniforme d'exception handling

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier la structure des services
find J1P.Application/Services -name "*Service.cs" -exec basename {} \;
find J1P.Application/Interfaces/Services -name "I*Service.cs" -exec basename {} \;

# 2. Vérifier l'enregistrement DI
grep -r "AddScoped.*Service" J1P.Api/Extensions/ServiceCollectionExtensions.cs

# 3. Détecter les services hors structure
find . -name "*Service.cs" | grep -v "/Application/Services/" | grep -v "obj/" | grep -v "bin/"
```

### **CHECKLIST**

Pour chaque service :
- [ ] Interface dans `/Application/Interfaces/Services/` ?
- [ ] Implémentation dans `/Application/Services/` ?
- [ ] Enregistrement DI cohérent ?
- [ ] Pattern d'exception handling uniforme ?
- [ ] Logger injecté et utilisé correctement ?

---

## **SECTION 3: REPOSITORIES - VÉRIFICATION DE L'UNIFORMITÉ**

### **RÈGLES À VÉRIFIER**

1. **STRUCTURE UNIFORME** : Pattern identique pour tous les repositories
2. **INTERFACES DANS APPLICATION** : Toutes les interfaces dans `/J1P.Application/Interfaces/Repositories/`
3. **IMPLÉMENTATIONS DANS INFRASTRUCTURE** : Toutes les implémentations dans `/J1P.Infrastructure/Repositories/`
4. **MÉTHODES ASYNCHRONES** : Toutes les méthodes CRUD sont async
5. **CONFIGURATION EF CORE** : Fluent API dans `/Infrastructure/Persistence/Configurations/`

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier la structure des repositories
find J1P.Infrastructure/Repositories -name "*Repository.cs" -exec basename {} \;
find J1P.Application/Interfaces/Repositories -name "I*Repository.cs" -exec basename {} \;

# 2. Vérifier les configurations EF Core
ls J1P.Infrastructure/Persistence/Configurations/

# 3. Détecter les repositories hors structure
find . -name "*Repository.cs" | grep -v "/Infrastructure/Repositories/" | grep -v "/Application/Interfaces/" | grep -v "obj/" | grep -v "bin/"
```

---

## **SECTION 4: CONTROLLERS - VÉRIFICATION DE L'UNIFORMITÉ**

### **RÈGLES À VÉRIFIER**

1. **HÉRITAGE UNIFORME** : Tous les contrôleurs héritent de `BaseApiController`
2. **RETOURS DTO** : Jamais de types anonymes, toujours des DTOs
3. **GESTION DES EXCEPTIONS** : Pattern try-catch uniforme avec `ExceptionHandlingHelper`
4. **AUTHORISATION** : Utilisation cohérente des attributs `[Authorize]`
5. **VALIDATION** : DTOs validés avec FluentValidation

### **COMMANDES D'ANALYSE**

```bash
# 1. Vérifier l'héritage des contrôleurs
grep -r "class.*Controller" J1P.Api/Controllers/ | grep -v "BaseApiController"

# 2. Détecter les retours anonymes
grep -r "return.*new {" J1P.Api/Controllers/ --include="*.cs"

# 3. Vérifier la gestion des exceptions
grep -r "try.*catch" J1P.Api/Controllers/ --include="*.cs"
```

---

## **SECTION 5: DTOs & MODELS - VÉRIFICATION DES PATTERNS**

### **RÈGLES À VÉRIFIER**

1. **REQUIRED/NULLABLE** : Pas de valeurs par défaut, utilisation de `required`

Attention : 
pour les DTO il est interdit de corriger ces erreurs par la modification des types de valeurs, et notemment la transformation de non nullable en nullable !
pour les modèles, tout changement de type est formellement interdit !

2. **ENUMS STRING** : Tous les enums utilisent `StringEnumConverter`
3. **MAPPING AUTO MAPPER** : Jamais de mapping manuel
4. **VALIDATION FLUENT** : Tous les DTOs d'entrée ont validateurs

### **COMMANDES D'ANALYSE**

```bash
# 1. Détecter les valeurs par défaut (interdites)
grep -r "= string.Empty\|= null!\|= 0\|= false" J1P.Application/DTOs/ --include="*.cs"

# 2. Vérifier les validateurs FluentValidation
find J1P.Application/Validators/ -name "*Validator.cs"

# 3. Vérifier les profils AutoMapper
find J1P.Application/Mapping/ -name "*Profile.cs"
```

---

## **RAPPORT DE VIOLATIONS - FORMAT ATTENDU**

```
## 🔍 RAPPORT D'ANALYSE - [DATE]

### ❌ VIOLATIONS CRITIQUES
#### Enums
- [FICHIER:LIGNE] Description précise de la violation
- [FICHIER:LIGNE] Autre violation

#### Services  
- [FICHIER:LIGNE] Description précise

### ⚠️ VIOLATIONS MINEURES
#### Controllers
- [FICHIER:LIGNE] Description précise

### ✅ ÉLÉMENTS CORRECTS
- [NOMBRE] enums respectent le pattern string
- [NOMBRE] services suivent la structure uniforme

### 📋 PLAN DE CORRECTION
1. **Priorité Critique** : [NOMBRE] corrections
2. **Priorité Mineure** : [NOMBRE] corrections
3. **Total estimé** : [NOMBRE] fichiers à modifier
```

---

## **COMMANDE D'EXÉCUTION COMPLÈTE**

```bash
# Exécuter l'analyse complète
echo "=== ANALYSE DES ENUMS ===" && \
find . -name "*.cs" -path "*/Domain/Enums/*" -exec grep -H "= [0-9]" {} \; && \
echo "=== ANALYSE DES SERVICES ===" && \
find . -name "*Service.cs" | grep -v "/Application/Services/" | grep -v "obj/" | grep -v "bin/" && \
echo "=== ANALYSE DES CONTROLLERS ===" && \
grep -r "return.*new {" J1P.Api/Controllers/ --include="*.cs" && \
echo "=== ANALYSE DES DTOs ===" && \
grep -r "= string.Empty" J1P.Application/DTOs/ --include="*.cs"
```

---

## **FRÉQUENCE D'EXÉCUTION**
- **Après chaque grosse feature** : Analyse complète
- **Review de code** : Vérification ciblée des fichiers modifiés  
- **Mensuelle** : Analyse systématique de toute la codebase

**RAPPEL** : Le but est ZÉRO VIOLATION. Toute exception doit être justifiée et documentée.