
[array]$computers = @(
    "serwer1.domena.pl",
    "serwer2.domena.pl",
    "serwer3.domena.pl"
    )


Invoke-Command -ComputerName $computers -ScriptBlock {
    
    write-host "-------" $env:computername "-------"
    quser.exe
    
} -Credential (Get-Credential)