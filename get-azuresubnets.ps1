<#  
.SYNOPSIS  
    - Invoke-WebRequest https://www.microsoft.com/en-us/download/confirmation.aspx?id=41653
    - looks for 'Click Here' (manual download link)
    - loads download into xml variable 
    - displays region and assoicated subnets


.Version 1.0
    
.DESCRIPTION  
    
.NOTES  
    File Name    : Get-AzureIPRanges.ps1
    Author       : drew.robinson@microsoft.com
    

#>


$AzureIPRangesPage=Invoke-WebRequest -Uri https://www.microsoft.com/en-us/download/confirmation.aspx?id=41653 -Method Get -UseBasicParsing

[XML]$AzureIPRanges= Invoke-RestMethod -uri ($AzureIPRangesPage.Links |Where {$_.outerhtml -like "*Click here*"}).href[0]


    Foreach ($iprange in $Azureipranges.AzurePublicIpAddresses.region)
        { 
        Write-Host $iprange.name -ForegroundColor Yellow
            
            Foreach ($ipsubnet in $iprange.iprange.subnet)
            {
            Write-Host $ipsubnet
            }
        Write-Host "---------------------" -ForegroundColor White
        }