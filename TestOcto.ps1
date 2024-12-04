param(
    [string]$Prenom,
    [string]$Nom,
    [string]$NumeroEmp,
    [string]$Poste
)

$PSDefaultParameterValues['Out-File:Encoding'] = 'UTF8'

Write-Host Prenom: $Prenom Nom: $Nom Numero: $NumeroEmp Poste: $Poste
Read-Host -Prompt "Press any key to continue"
