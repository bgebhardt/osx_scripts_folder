-- script to swap the minimimzed windows
-- I use it to quickly swap between my work and personal vaults

-- when you minimize a window it changes the order of the windows so when getting the windows you need to consider this.
-- my quick hack is to just get references to the first 2 windows
-- TODO: generalize this quick hack. Copy window references into another array?
-- will have to save window titles into an array and then look them up with getWindow function below

-- quick HACK version
tell application "System Events"
	tell process "Obsidian"
		set win1 to window 1
		set win2 to window 2
		
		my swapMinimize(win1)
		my swapMinimize(win2)
	end tell
end tell

-- longer term version
-- TODO: check if they are both unminimized
(*
tell application "System Events"
	tell process "Obsidian"
		-- will unminimize all windows
		repeat with w in windows
			my swapMinimize(w)
		end repeat
	end tell
end tell
*)

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