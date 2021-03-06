﻿@{
    # Plik w którym definiowane będą nasze funkcje.
    RootModule = 'PowerShellPL.psm1'

    # Wersja naszego modułu.
    ModuleVersion = '1.0.0'

    # Unikalny identyfikator.
    GUID = '2909cfd3-3dde-43f7-b210-bb2943485681'

    # Coś o tfórcy...
    Author = 'Bartek Bielawski'
    CompanyName = 'PowerShellPL.NET'
    Copyright = '(c) 2020 Bartek Bielawski. All rights reserved.'

    # Opis naszego modułu.
    Description = 'Demo na potrzeby bloga'

    # Eksportujemy... póki co wielkie nic.
    FunctionsToExport = @(
        'Get-PowerShellPLPost'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()

    PrivateData = @{
        PSData = @{

            # Tagi - pomogą w szukaniu modułu
            Tags = @(
                'Demo'
            )

            # Linki rozmaite...
            LicenseUri = 'https://opensource.org/licenses/MIT'
            ProjectUri = 'https://github.com/bielawb/PowerShellPL'
            IconUri = 'https://powershellpl.files.wordpress.com/2020/04/powershellpl.png'
        }
    }
}

