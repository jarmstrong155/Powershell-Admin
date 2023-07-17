# Powershell-Admin
A collection of helpful Powershell scripts for various Windows administrative tasks

**Purpose**

Support teams are often completing repitive tasks. At one point, my support team was spending far too long doing active directory maintenance as well as user off-boarding and user account updating. I built out these scripts to increase efficiency and productivity.

**Details**

I've tried to leave succient comments in each script to aid with setup & execution. A few of these scripts are using the import-csv cmdlet to fetch the raw data to be used. The .csv files can be stored anywhere on your system or accessible file server, just add the correct path. It is import that the .csv header value(s) match the variable(s) created in the script, i.e. $Users must have a header in the .csv titled Users. Realistically, these header values and variables can be whatever you want to call them, just be consistent.

**About the "Terminate-Employee" script**

This is a fairly large script which offers user input when run via the Powershell console. I've tried to comment out the script as much as possible so it _could_ be modified for your use. This script was designed to automate a fairly lengthty process our team would go through to offboard an employee in Active Directory. The idea isn't necessarily unique, but the tasks required may not apply to your org. and major changes to the script may need to be changed. If anything, this script (program?) serves as a nice proof-of-concept as to the "power" of Powershell.
