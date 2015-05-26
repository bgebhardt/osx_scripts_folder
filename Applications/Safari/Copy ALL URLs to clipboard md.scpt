-- copy urls of all windows to clipboard in markdown link format
-- also inserts tab counts and a total tab count at the end
-- [tite]("url")
tell application "Safari"
	set URL_list to ""
	set allWindows to (every window)
	set totalTabs to 0
	
	repeat with theWindow in allWindows
		
		if name of theWindow is not "" then
			-- window header
			set numTabs to count tabs of theWindow
			set totalTabs to totalTabs + numTabs
			
			set URL_list to URL_list & return & return & "== " & numTabs & " tabs"
			if (visible of theWindow) is not true then
				set URL_list to URL_list & " (minimized)"
			end
			
			repeat with i in (every tab of theWindow)
				set mdURL to "* [" & name of i & "](" & URL of i & ")"
				set URL_list to URL_list & return & mdURL
			end repeat
			
		end if
	end repeat
	
	set URL_list to URL_list & return & return & "== " & totalTabs & " total tabs" & return
	
	set the clipboard to URL_list
	URL_list
	
	beep 2
end tell