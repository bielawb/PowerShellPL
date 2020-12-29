Describe 'Testujemy funkcję Get-PowerShellPLPost' {
    BeforeAll {
        Mock -CommandName Invoke-RestMethod -MockWith {
            @(
                @{
                    title = 'test'
                    link = 'http://link.do/test'
                    pubDate = '2020-12-28 10:00'
                }
            )
          
        }
    }

    It 'Zwraca błąd z info o problemach w Invoke-RestMethod' {
        Mock -CommandName Invoke-RestMethod -MockWith {
            Write-Error 'Błąd!'
        }
        {
            Get-PowerShellPLPost -ErrorAction Stop
        } | Should -Throw -ExpectedMessage 'Coś poszło nie tak... Błąd!'
    }

    It 'Uruchamia Invoke-RestMethod z odpowiednimi parametrami' {
        $null = Get-PowerShellPLPost -Page 10
        Should -Invoke Invoke-RestMethod -ParameterFilter {
            $Uri -eq 'https://powershellpl.net/feed/?paged=10'
        }
    }

    It 'Zwraca obiekt z zestawem właściwości DefaultDisplayPropertySet' {
        $wynik = Get-PowerShellPLPost
        $wynik.PSStandardMembers | Should -Not -BeNullOrEmpty
    }
}