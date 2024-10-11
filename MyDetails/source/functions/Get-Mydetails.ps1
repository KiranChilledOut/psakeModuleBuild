function Get-Mydetails {
    [CmdletBinding()]
    param (
        # First Name
        [Parameter(Mandatory = $true)]
        [string]
        $FirstName,

        # LastName
        [Parameter(Mandatory = $true)]
        [string]
        $LastName,

        # Revenue
        [Parameter(Mandatory = $true)]
        [int]
        $Revenue   
    )
    
    
    process {
        $fullName = "$FirstName $LastName"
        $BankBalance = Get-BankBalance -Revenue $Revenue
        
        return @{
            Name = $fullName
            NetWorth = $BankBalance
        }
    }
}