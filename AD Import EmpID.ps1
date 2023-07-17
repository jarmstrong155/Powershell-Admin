<# This script is used to quickly update all Active Directory user's EmployeeID attribute. This can be usefully if HR makes changes to
employee ID's which need to match in AD. The .csv file will need to contain a column with the headers "Users" and "EmployeeID". 

Values in "Users" should match the "User.SamAccountName" attribute of the respective user(s) in Active Directory - the is usually 
the email address of the user, i.e joe.smith@domain.com. 

The "EmployeeID" column should contain the corresponding employee ID from the HRIS.
#>
 
Import-Module ActiveDirectory
$Users = Import-Csv -Path c:\import_csv\empidimport.csv #Change this path to your .csv file
Get-Content -Path c:\users\jeremy.armstrong\documents\imports\empidimport2.csv | ft
sleep 10
foreach ($User in $Users)
{
Set-ADUser -identity $User.SamAccountName -replace @{"EmployeeID" = $User.EmployeeID} -verbose
}
