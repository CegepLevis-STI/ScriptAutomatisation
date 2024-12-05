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