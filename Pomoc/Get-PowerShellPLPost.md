---
external help file: PowerShellPL-help.xml
Module Name: PowerShellPL
online version:
schema: 2.0.0
---

# Get-PowerShellPLPost

## SYNOPSIS
Funkcja pobierająca wpisy na blogu PowerShellPL.

## SYNTAX

```
Get-PowerShellPLPost [[-Page] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Funkcja pobiera informację o postach na blogu korzystając z RSS.

## EXAMPLES

### EXAMPLE 1
```
Get-PowerShellPLPost
```

Pobiera informację o ostatnich postach na blogu.

### EXAMPLE 2
```
Get-PowerShellPLPost -Page 2
```

Pobiera drugą stronę z postami na blogu.

## PARAMETERS

### -Page
Strona z postami.
Im większa wartośc, tym starsze posty pobierzemy.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
