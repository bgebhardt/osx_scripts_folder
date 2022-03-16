-- script to restart OneDrive

-- this might not work as both personal and work OneDrive's need to start
tell application "OneDrive"
	quit
	delay 15
	beep "3"
	activate
end tell