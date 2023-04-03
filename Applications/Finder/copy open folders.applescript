-- script to copy the open folder paths to the clipboard
-- allows me to copy open folders to save to a text file

tell application "Finder"
	
	set the clipboard to ""
	set wins to windows

	set the clipboard to (((count wins) as text) & " open windows" & return)
    repeat with w in wins
		set thePath to (target of w as text) -- gets the text version of the path to the folder
		set theEntry to "** " & (name of w) & " ** (" & thePath & ")"
		set the clipboard to (the clipboard) & return & theEntry
	end repeat
		
end tell
