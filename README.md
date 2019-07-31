# snapraid-maintenance-script

Frequently used Snapraid commands in an easy-to-use Powershell script. 


### To Download:
	wget 'https://raw.githubusercontent.com/falling-fading/snapraid-maintenance-script/master/Snapraid_Maintenance_Script.ps1'
  
### Available Snapraid Commands:
```
- 'diff'..........List all the files modified from the last 'sync'.
- 'sync'..........Update the parity information.
- 'scrub -p 100'..Scrub 100% of the array, checking for errors in data and parity.
- 'status'........Print a summary of the state of the disk array.
- 'smart'.........Print a SMART report of all the disks of the array.
```

### Setup:
Edit the .ps1 file to ensure the '$snapraidExeLocation' variable (on line #1) points to the location of your snapraid exe. 

### Usage:
1. Run the .ps1 file in powershell.
2. Select the Snapraid command you wish to run and confirm. 
3. To exit the script, press 'q' and confirm.
