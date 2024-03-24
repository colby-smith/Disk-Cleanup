# Disk-Cleanup
## About
A collection of disk cleanup scripts setup in windows task schedular which are ran at set intervals to increase your disk space,scripts include: removing set-up .exe files from the downloads folder, clearing out temp folders and caches.

## Prerequisites
* powershell

## Migrating from Windows PowerShell 5.1 to PowerShell 7
1. Run the code below in your terminal.
```
msiexec.exe /package PowerShell-7.4.1-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1
```
## Scripts
* scripts/downloads_folder_cleanup.ps1
* scripts/recycle_bin_cleanup.ps1
* scripts/temp_files_cleanup.ps1


## Usage
1. To set-up scheduled tasks to run these scripts first open task scheduler, click action and create task.

2. Name your task ***disk cleanup*** or whatever you like, change the user account to ***administrator*** and configure for windows 10.
   
![Create_task](https://github.com/colby-smith/Disk-Cleanup/assets/160542058/cc5ff541-bc91-47d3-90b6-6bc12abc05e3)

3. Create the task for whatever day you wish.
   
![create_task_trigger](https://github.com/colby-smith/Disk-Cleanup/assets/160542058/bb0c2e5e-b564-41e2-859f-ef1c9746429f)

4. Finally create an action using the cleanup script(s). Once complete saave the scheduled task and it will perform the actions on the set day(s) sepcified.
   
![image](https://github.com/colby-smith/Disk-Cleanup/assets/160542058/677beeaa-4575-4f30-b01b-7cb6bfdd7618)
