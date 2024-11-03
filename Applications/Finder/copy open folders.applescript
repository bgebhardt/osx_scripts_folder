-- script to copy the open folder paths to the clipboard
-- allows me to copy open folders to save to a text file

tell application "Finder"
	
	set the clipboard to ""
	set wins to windows
	
	set the clipboard to (((count wins) as text) & " open windows" & return)
	repeat with w in wins
		if (class of target of w) is folder then
			set thePath to (POSIX path of (target of w as text)) -- gets the text version of the path to the folder
			set theEntry to "- [" & (name of w) & "](file://" & thePath & ")"
			set the clipboard to (the clipboard) & return & theEntry
		else
			-- the class isn't folder so we skip it; but what are we missing?
			-- I'm not sure this will work. May give an error
			set the clipboard to (the clipboard) & (name of (target of w)) & return
		end if
		
	end repeat
	
end tell
