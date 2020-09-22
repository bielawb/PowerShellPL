function Get-PowerShellPLPost {
    <#
        .Synopsis
        Funkcja pobierająca wpisy na blogu PowerShellPL.

        .Description
        Funkcja pobiera informację o postach na blogu korzystając z RSS.

        .Example
        Get-PowerShellPLPost
        Pobiera informację o ostatnich postach na blogu.

        .Example
        Get-PowerShellPLPost -Page 2
        Pobiera drugą stronę z postami na blogu.
    #>

    [CmdletBinding()]
    param (
        # Strona z postami. Im większa wartośc, tym starsze posty pobierzemy.
        [Int]$Page = 1
    )

    $doWyświetlenia = @{
        MemberType = 'MemberSet'
        Name = 'PSStandardMembers'
        Value = [Management.Automation.PSPropertySet]::new(
            'DefaultDisplayPropertySet',
            [string[]]@('title', 'link', 'pubDate')
        )
        PassThru = $true
    }

    try {
        $wyniki = Invoke-RestMethod -Uri "https://powershellpl.net/feed/?paged=$Page" -ErrorAction Stop
        $wyniki | Add-Member @doWyświetlenia
    } catch {
        Write-Error "Coś poszło nie tak... $_"
    }
}