-- Quick script to get the color of every calendar.
-- In script editor you can copy the results and create a variable and write a script to set all the colors to match.
tell application "Calendar"
	
	set calColors to {}
	repeat with theCal in calendars
		
		set calColors to calColors & {{name:name of theCal, color:color of theCal}}
		
	end repeat
		
	(*	repeat with i in calColors
		set the clipboard to (the clipboard) & return & i
	end repeat
	*)
	calColors
	
end tell