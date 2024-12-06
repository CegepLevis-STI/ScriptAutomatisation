param(
    $Prenom = $args[0],
    $Nom = $args[1],
    $NumeroEmp = $args[2],
    $Departement =  $args[3],
    $Poste = $args[4]
)

#  test

$OutputTest = "Prenom: " + $Prenom + " Nom: " + $Nom + " Numero: " + $NumeroEmp + " Departement: " + $Departement + " Poste: " + $Poste + "."
Read-Host $OutputTest

$ListDept = 'Département de physique et géologie', 'Approvisionnement', 'Service du cheminement et de l''organisation scolaires'
$ListPoste_Approvisionnement = 'Acheteur/Acheteuse', 'Agent/Agente', 'Coordonnateur/Coordonatrice'

foreach ($Dept in $ListDept) {
    if ($Departement -eq $Dept)
    {
        foreach ($PosteDept in (Get-Variable -Name "ListPoste_$Dept").Value)
        {
            if ($Poste -eq $PosteDept)
            {
                Write-Host "Le poste de la personne est $PosteDept et elle fait partie du déparement $Dept"
                Read-Host "Enter : "
            }
        }
    }
}