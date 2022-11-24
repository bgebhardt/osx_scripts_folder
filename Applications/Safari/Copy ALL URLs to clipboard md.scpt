-- copy urls of all windows to clipboard in markdown link format
-- also inserts tab counts and a total tab count at the end
-- [tite]("url")
tell application "Safari"
	set URL_list to ""
	set allWindows to (every window)
	set totalTabs to 0
	
	repeat with theWindow in allWindows
		log (get name of theWindow) 
		set skipWindow to false
		try
			set numTabs to count tabs of theWindow	
		on error
			-- some windows don't have tabs so we skip that one, but don't want to squash other errors
			set skipWindow to true
		end try		
				
		if skipWindow is false then			
			set numTabs to count tabs of theWindow
			set totalTabs to totalTabs + numTabs
			
			set URL_list to URL_list & return & return & "== " & numTabs & " tabs"
			if (visible of theWindow) is not true then
				set URL_list to URL_list & " (minimized)"
			end

			set URL_list to URL_list & return -- add a return for readability in markdown editors.
							
			repeat with i in (every tab of theWindow)
				set isActiveTabText to (my activeTabText(i, numTabs))
				set mdURL to "- " & isActiveTabText & "[" & name of i & "]( " & URL of i & " )"
				set URL_list to URL_list & return & mdURL
			end repeat
			
		end if
	end repeat
	
	set URL_list to URL_list & return & return & "== " & totalTabs & " total tabs" & return
	
	set the clipboard to URL_list
	URL_list
	
	beep 2
end tell

-- if there are multiple tabs return the text to add to the item
on activeTabText(tab, numTabs)
	if numTabs is not 1 then
		if (visible of tab) is true then -- current active tab
			return "ACTIVE TAB: "
		end
	end
	return ""
end