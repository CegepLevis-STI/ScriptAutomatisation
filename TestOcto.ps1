param(
    [string]$Prenom,
    [string]$Nom,
    [string]$NumeroEmp,
    [string]$Poste
)

$PSDefaultParameterValues['Out-File:Encoding'] = 'UTF8'

Write-Host $Prenom + " " + $Nom + " " + $NumeroEmp + " " + $Poste
Read-Host -Prompt "Press any key to continue"