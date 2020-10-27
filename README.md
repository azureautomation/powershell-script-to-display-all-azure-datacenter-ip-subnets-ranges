Powershell script to display all Azure Datacenter IP subnets ranges
===================================================================

            

Powershell script that will extract Azue IP Region IP Addresses from M[icrosoft Azure Datacenter IP Ranges xml document](https://www.microsoft.com/en-us/download/details.aspx?id=41653) that is updated every Wednesday.


 


 


Script exectutes the following:


  *  Invoke-WebRequest https://www.microsoft.com/en-us/download/confirmation.aspx?id=41653 

  *  looks for 'Click Here' (manual download link) 
  *  loads download into xml variable 
  *  displays region and assoicated subnets 





![Image](https://github.com/azureautomation/powershell-script-to-display-all-azure-datacenter-ip-subnets-ranges/raw/master/ipscrape.jpg)


 


 

 

        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.
