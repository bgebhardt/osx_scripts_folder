-- copy urls to clipboard in markdown link format
-- [tite]("url")
tell application "Safari"
	set URL_list to ""
	repeat with i in (every tab of window 1)
		set mdURL to "* [" & name of i & "]( " & URL of i & " )"
		set URL_list to URL_list & return & mdURL
	end repeat
	
	set the clipboard to URL_list
	URL_list
	
	beep 2
end tell