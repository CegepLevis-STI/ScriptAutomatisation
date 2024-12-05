param(
    $Prenom = $args[0],
    $Nom = $args[1],
    $NumeroEmp = $args[2],
    $Poste = $args[3]
)

Write-Host Prenom: $Prenom Nom: $Nom Numero: $NumeroEmp Poste: $Poste.
Write-Host "-"$Prenom"-"
Read-Host Entrer pour continuer