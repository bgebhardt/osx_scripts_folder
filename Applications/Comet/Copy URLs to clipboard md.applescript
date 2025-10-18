-- Template to easily detect running browser and target that browser. 
-- Uses code duplication unfortunately.

-- copy urls to clipboard in markdown link format
-- [tite]("url")
tell application "Comet"

	set URL_list to ""
	repeat with i in (every tab of window 1)
		set mdURL to "- [" & title of i & "](" & URL of i & ")"
		set URL_list to URL_list & mdURL & return
	end repeat
	
	set the clipboard to URL_list
	URL_list
	
	beep 2
	
end tell
	
