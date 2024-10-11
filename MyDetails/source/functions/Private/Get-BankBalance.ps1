function Get-BankBalance {
    [cmdletbinding()]
    param (
        [int]$Revenue
    )

    return 1000000*$Revenue
}