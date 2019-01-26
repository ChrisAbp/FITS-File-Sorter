This is a PowerShell script to sort all of your Slooh FITS files automatically. I have not written this for any Non-Slooh Files. To use this script you will need to do the following:

1. Download PowerShell (Free) from one of the following locations.
   a. Windows (x64): https://github.com/PowerShell/PowerShell/releases/download/v6.1.2/PowerShell-6.1.2-win-x64.msi
   b. Windows (x86): https://github.com/PowerShell/PowerShell/releases/download/v6.1.2/PowerShell-6.1.2-win-x86.msi

   *Note* There are versions available for Linux, but I have not tested them. You will find them here:
   https://github.com/PowerShell/PowerShell

2. After installing PowerShell, you will need to run once as administrator to turn on script permissions.
   a. Right-Click PowerShell and select "Run as Administrator"
   b. Type the following at the command prompt (no quotes): "Set-ExecutionPolicy -ExecutionPolicy Unrestricted" <ENTER>
   c. This will allow the execution of scripts. You won't need to run as administrator anymore.

3. Place all of your unsorted FITS files from all missions and all telescopes in the "UNSORTED" directory.

4. At this point you have two choices. You can either:
   a. Right-click "SortFITS.ps1" and select Run with Powershell
                       -or-
   b. Right-click "SortFITS.ps1" and select "Open with" -> "Choose another app" -> and locate the PowerShell executable file (mine was located at C:\Program Files\PowerShell\6\pwsh.exe). If you choose this option, the next time you choose "Open with" -> "Choose another app", you will be able to select "pwsh.exe" and choose "Always use this app to open .ps1 files". This means you will be able to simply double-click the script when ready and it will run.

I hope this helps. If you have any problems or concerns, please let me know and I'll see if I can fix the problem.

Keep Looking Up!
ChrisA.2018