param(
    $Prenom = $args[0],
    $Nom = $args[1],
    $NumeroEmp = $args[2],
    $Departement = $args[3],
    $Poste = $args[4]
)

#  test

$ListeDept = [ordered]@{
    'Département de physique et géologie'='Phys'
    'Approvisionnement'='Appro'
    'Service du cheminement et de l''organisation scolaires'='Scos'
}

$ListeGroupe_Appro = @('GroupeAppro1', 'GroupeAppro2')

$ListeGroupe_Phys = @('GroupePhys1', 'GroupePhys2')

$ListeGroupe_Scos = @('GroupeScos1', 'GroupeScos2')

$ListePoste_Appro = [ordered]@{
    'Acheteur/Acheteuse'='group1', 'group2'
    'Agent/Agente'='group3', 'group4'
    'Coordonnateur/Coordonatrice'='group5', 'group6'
}

$ListePoste_Phys = [ordered]@{
'Prof'='group1', 'group2'
'Tech'='group3', 'group4'
'Coordonnateur/Coordonatrice'='group5', 'group6'
}

$ListePoste_Scos = [ordered]@{
'AidePed'='group1', 'group2'
'Agent/Agente'='group3', 'group4'
'Coordonnateur/Coordonatrice'='group5', 'group6'
}

foreach ($Dept in $ListeDept.Keys) {
    if ($Departement -like $Dept)
        {
        foreach ($PosteDept in ((Get-Variable -Name ('ListePoste_' + $ListeDept[$Departement])).Value).Keys)
            {
                if ($Poste -like $PosteDept)
                {
                    foreach ($groupeAD in ((Get-Variable -Name ('ListePoste_' + $ListeDept[$Departement])).Value)[$Poste])
                    {
                        Write-Host Ajouter le groupe $groupeAD à $Prenom $Nom '('$NumeroEmp' )'
                    }

                    foreach ($GroupDept in (Get-Variable -Name ('ListeGroupe_' + $ListeDept[$Departement])).Value)
                    {
                        Write-Host Ajouter le groupe $GroupDept à $Prenom $Nom '('$NumeroEmp' )'
                    }
                }
            }
        }
}