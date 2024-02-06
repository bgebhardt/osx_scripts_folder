-- Script to select an obsidian vault to swap the minimize state of
-- Script prompts to bring up or minmize a specific vaults based on all Obsidian windows

set theVaults to {}
set theWins to {}

tell application "System Events"
	tell process "Obsidian"
		-- get the vault name of every window
		set theWindows to windows
		repeat with w in theWindows
			set winTitle to title of w
			set theVaults to theVaults & {(my getVaultName(winTitle))}
		end repeat
		
		theVaults	
		
	end tell
end tell

set theVault to choose from list theVaults with prompt "Select your favorite fruit:" default items item 1 of theVaults

if theVault is false then -- user cancelled
	--display dialog "cannceled"
	return
end if

-- this works but for some reason sometimes doesn't maximize "Work" vault. A bug I can't find at the moment.
tell application "System Events"
	tell process "Obsidian"
		set theWindows to windows
		repeat with w in theWindows
			-- if this is the right window object
			if title of w contains theVault then
				-- swapmin
				my setMinimize(w, 2) -- maximize the window
			else
				-- mimimize other windows
				my setMinimize(w, 1)
			end if
		end repeat
	end tell
end tell

theWins
theVaults
theVault

(*
 -- trying to do it with window objects but not working
set theIndex to 0
-- get index of chosen item
repeat with i from 1 to (count theVaults)
	if theVault = item i of the theVaults then
		set theIndex to i
	end if
end repeat

tell application "System Events"
	tell process "Obsidian"
		set theMaxW to item (theIndex + 1) of theWins
		set theWindows to windows
		repeat with w in theWindows
			-- if this is the right window object
			log "theVault is " & theVault
			if w is theMaxW then
				-- swapmin
				my setMinimize(w, 2) -- maximize the window
			else
				-- mimimize other windows
				my setMinimize(w, 1)
			end if
		end repeat
	end tell
end tell
*)

on getVaultName(winTitle)
	my theSplit(winTitle, "-")
	set vaultName to item -2 of (my theSplit(winTitle, "-"))
	set vaultName to text 2 thru -2 of vaultName -- trim first and last space
	return vaultName
end getVaultName

on theSplit(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	
	-- create the array
	set theArray to every text item of theString
	
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	
	-- return the result
	return theArray
end theSplit
--set TestString to "1-2-3-5-8-13-21"
--set myArray to my theSplit(TestString, "-")


on swapMinimize(w)
	tell application "System Events"
		tell process "Obsidian"
			--log (get title of w)
			--log (get value of attribute "AXMinimized" of w)
			if value of attribute "AXMinimized" of w is true then
				set value of attribute "AXMinimized" of w to false
			else
				set value of attribute "AXMinimized" of w to true
			end if
		end tell
	end tell
end swapMinimize

-- function sets minimize state of a window.
-- w = window object to change
-- s = state to set. 1 = minimized; 2 = maximized; 3 = swap current state
on setMinimize(w, s)
	tell application "System Events"
		tell process "Obsidian"
			--log (get title of w)
			--log (get value of attribute "AXMinimized" of w)
			
			if s is 1 then
				set value of attribute "AXMinimized" of w to true
			else if s is 2 then
				set value of attribute "AXMinimized" of w to false
			else if s is 3 then
				if value of attribute "AXMinimized" of w is true then
					set value of attribute "AXMinimized" of w to false
				else
					set value of attribute "AXMinimized" of w to true
				end if
			else
				-- do nothing
			end if
			
		end tell
	end tell
end setMinimize

-- get the window based on the title
on getWindow(winTitle)
	tell application "System Events"
		tell process "Obsidian"
			repeat with w in windows
				if name of w is winTitle then
					return w
				end if
			end repeat
		end tell
	end tell
end getWindow

-- this version unminimizes all windows. Keeping it here for reference only

(*
tell application "System Events"
	tell process "Obsidian"
	-- will unminimize all windows
		repeat with w in windows
			if value of attribute "AXMinimized" of w is true then
				set value of attribute "AXMinimized" of w to false
			end if
		end repeat
	end tell
end tell

*)

(*
Online References

- [applescsript adding to an array - Search](https://www.bing.com/search?pglt=673&q=applescsript+adding+to+an+array&cvid=08d3a76317a746318ada53a8797187c5&aqs=edge..69i57j0l7.4536j0j1&FORM=ANNTA1&PC=U531)
- [Unminimize windows of the current application - macOS / AppleScript - Automators Talk](https://talk.automators.fm/t/unminimize-windows-of-the-current-application/12360)
- [macos - Un-minimizing an app with Applescript - Stack Overflow](https://stackoverflow.com/questions/7681418/un-minimizing-an-app-with-applescript)
- [A Strategy for UI Scripting in AppleScript](https://n8henrie.com/2013/03/a-strategy-for-ui-scripting-in-applescript/)
- [Hiding/minimizing maximized windows using applescript - Stack Overflow](https://stackoverflow.com/questions/68583645/hiding-minimizing-maximized-windows-using-applescript)
- [automator - Build keyboard shortcut for "minimize all windows of current app except the current window" - Ask Different](https://apple.stackexchange.com/questions/410462/build-keyboard-shortcut-for-minimize-all-windows-of-current-app-except-the-curr)

Bing chat really helped me figure this out.
- [Bing Chat with GPT-4](https://www.bing.com/search?pglt=673&q=applescript+to+unminimize+all+windows+of+an+app&cvid=6aebf961fbb3450ba74b603e2fae5630&aqs=edge..69i57.7189j0j1&FORM=ANNTA1&PC=U531&showconv=1)

*)