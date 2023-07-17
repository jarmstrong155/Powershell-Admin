Import-Module ActiveDirectory
$Users = Import-Csv -Path c:\users\jeremy.armstrong\documents\imports\empidimport2.csv
Get-Content -Path c:\users\jeremy.armstrong\documents\imports\empidimport2.csv | ft
sleep 10
foreach ($User in $Users)
{
Set-ADUser -identity $User.SamAccountName -replace @{"EmployeeID" = $User.EmployeeID} -verbose
}