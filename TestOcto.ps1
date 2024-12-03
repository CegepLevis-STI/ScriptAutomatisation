param(
    [string]$Prenom,
    [string]$Nom,
    [string]$NumeroEmp,
    [string]$Poste
)

$PSDefaultParameterValues['Out-File:Encoding'] = 'UTF8'

[System.Windows.MessageBox]::Show($Prenom + " " + $Nom + " " + $NumeroEmp + " " + $Poste)
