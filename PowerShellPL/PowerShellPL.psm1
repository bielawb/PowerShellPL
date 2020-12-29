foreach ($plik in Get-ChildItem -Path $PSScriptRoot\Publiczne\*.ps1, $PSScriptRoot\Prywatne\*.ps1) {
    . $plik.FullName
}