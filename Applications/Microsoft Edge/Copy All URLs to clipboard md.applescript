-- copy urls of all windows to clipboard in markdown link format
-- also inserts tab counts and a total tab count at the end
-- [tite]("url")
tell application "Microsoft Edge"
	-- inspired by this gist: https://gist.github.com/rentzsch/1047967
	set URL_list to ""
	set allWindows to (every window)
	set totalTabs to 0
	
	repeat with theWindow in allWindows
		log (get title of theWindow)
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
			end if
			
			set URL_list to URL_list & return -- add a return for readability in markdown editors.
			
			set activeTabIndex to active tab index of theWindow
			set currentTab to 1 -- tabs are 1-indexed
			repeat with i in (every tab of theWindow)
				-- count the tab you're on
				if activeTabIndex = currentTab then -- current active tab
					set isActiveTabText to "ACTIVE TAB:"
				else
					set isActiveTabText to ""
				end if
				set mdURL to "* " & isActiveTabText & "[" & title of i & "]( " & URL of i & " )"
				set URL_list to URL_list & return & mdURL
				set currentTab to currentTab + 1
			end repeat
			
		end if
	end repeat
	
	set URL_list to URL_list & return & return & "== " & totalTabs & " total tabs" & return
	
	set the clipboard to URL_list
	URL_list
	
	beep 2
	
end tell