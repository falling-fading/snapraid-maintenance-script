$snapraidExeLocation='C:\Program Files\snapraid\snapraid.exe' #Location of snapraid.exe

function Show-Menu
{
	cls
	Write-Host "================ Snapraid Maintenance Script ================"
	Write-Host ""
	Write-Host "Snapraid commands:"
	Write-Host "1: 'diff'..........List all the files modified from the last 'sync'."
	Write-Host "2: 'sync'..........Update the parity information."
	Write-Host "3: 'scrub -p 100'..Scrub 100% of the array, checking for errors in data and parity."
	Write-Host "4: 'status'........Print a summary of the state of the disk array."
	Write-Host "5: 'smart'.........Print a SMART report of all the disks of the array."
	Write-Host "Q: Quit............Quit this script."
    Write-Host ""
}

do
{
	Show-Menu
	$input = Read-Host "Please make a selection"
	switch ($input.ToLower())
	{
		'1' {
			cls
			"'diff' - Listing all the files modified from the last 'sync'."
			& "$snapraidExeLocation" --% diff
		}
		'2' {
			cls
			"'sync' - Updating parity information."
			& "$snapraidExeLocation" --% sync
		}
		'3' {
			cls
			"Scrubbing the Snapraid array."
			& "$snapraidExeLocation" --% scrub -p 100
		}
		'4' {
			cls
			"Printing a summary of the state of the disk array."
			& "$snapraidExeLocation" --% status
		}
		'5' {
			cls
			"Printing a SMART report of all the disks of the array."
			& "$snapraidExeLocation" --% smart
		}
		'q' {
			return
		}
	}
	Write-Host ""
	pause
}
until ($input -eq 'q')