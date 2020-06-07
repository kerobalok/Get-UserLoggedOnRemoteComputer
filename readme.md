# Get-UserLoggedOnRemoteComputer

## Overview
This script connects to remote Windows computers, gather information about sessions of logged in users and displays it.

# How to use it
## Preparation for first run
As script connects to remote computers, it must know names of remote machines. To do this edit script and replace computer names placed in quotation marks with your computer names:
```powershell
[array]$computers = @(
    "serwer1.domena.pl",
    "serwer2.domena.pl",
    "serwer3.domena.pl"
    )
```

---
**NOTE**

Computer names should be entered in quotation marks, and every name (exept last one) should be end with comma.

---

## How to use it?
From powershell console go to script location and type its name like below:
```powershell
.\Get-UserLoggedOnRemoteComputer.ps1
```
Script will run and it will ask you for credentials which it should use for connect to remote computers.

After that you should see the results like in the below example.
```powershell
PowerShell credential request
Enter your credentials.
User: domain\administrator
Password for user domain\administrator: **************
------- serwer1.domena.pl -------
No User exists for *
------- serwer2.domena.pl -------
 USERNAME              SESSIONNAME        ID  STATE   IDLE TIME  LOGON TIME      
 administrator                            4  Disc      3+02:50  2020-06-03 10:35
------- serwer3.domena.pl -------
No User exists for *
```
If script returns `No user exists for *` it means that no user is logged on remote computer (look at _serwer1.domena.pl_ and _serwer3.domena.pl_). 
Otherwise it will display information about session (like in the _serwer2.domena.pl_)