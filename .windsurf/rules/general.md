---
trigger: always_on
---

N'utilise JAMAIS de solution de contournement, si tu n'arrives pas à résoudre un problème, demande moi de l'aide
Quand tu résouds un problème, si tu ajoutes du code (log, ...), nettoie systématiquement ce code quand tu as fini

N'utilise JAMAIS de fallback. Les fallbacks cachent les problèmes. Je t'interdis d'utiliser un quelconque fallback

Quand tu dois constuire une classe, et notamment un modèle, N'INVENTE JAMAIS ses propriétés. Si tu ne les connais pas, vérifie dans la documentation et s'il n'y a rien de correspondant, demande moi

REGLES .NET CORE :
Règles spécifiques aux DTOs et plus globalement aux classes : utilise TOUJOURS le mot clef required pour les champs non nullable, sinon le champ doit être nullable. n'utilise jamais de valeur par défaut. N'utilise pas d'annontation [Required] mais le mot clef required
Correct : 
    public required string JwtToken { get; set; };
    public string? JwtToken { get; set;};
Incorrect :
    public string JwtToken { get; set; } = null!;
    public string JwtToken { get; set; };