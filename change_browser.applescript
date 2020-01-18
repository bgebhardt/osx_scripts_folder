-- script to toggle between Google Chrome and Microsoft Edge as your default browser.
tell application "System Preferences"
	current pane
	activate
	
	set the current pane to pane id "com.apple.preference.general"
	get the name of every anchor of current pane
	--> returns: {"Main", "Spaces"}
	--reveal anchor "Spaces" of pane id "com.apple.preference.expose"
	
end tell

delay 0.5 -- so system preferences pane has time to load

tell application "System Events"
	-- get properties of every UI element of window 1 of application process "System Preferences"
	set a to properties of every pop up button of window 1 of application process "System Preferences"
	count a
	
	-- this is the default browser
	get (description of pop up button 3 of window 1 of application process "System Preferences")
	
	set curBrowser to (value of pop up button 3 of window 1 of application process "System Preferences")
	
	tell pop up button 3 of window 1 of application process "System Preferences"
		click
		-- the menu does not appear inthe PUB's view heirarchy until after it's clicked
		tell menu 1
			get menu items
			if curBrowser is "Google Chrome" then
				click menu item "Microsoft Edge"
			else
				click menu item "Google Chrome"
			end if
		end tell
	end tell
	
	set newBrowser to (value of pop up button 3 of window 1 of application process "System Preferences")
	
	display notification "Default browser set to " & newBrowser & "." with title "Default Browser Changed"
end tell

(* Useful Links

[Setting a Popup Buttons Value from Applescript - Stack Overflow](https://stackoverflow.com/questions/57043601/setting-a-popup-buttons-value-from-applescript)
[script - How do I use AppleScript GUI scripting to change the mouse speed? - Ask Different](https://apple.stackexchange.com/questions/313503/how-do-i-use-applescript-gui-scripting-to-change-the-mouse-speed)
[Using AppleScript to modify settings/system preferences - Stack Overflow](https://stackoverflow.com/questions/49214368/using-applescript-to-modify-settings-system-preferences)
[AppleScript: Scriptable System Preferences](http://macosxautomation.com/applescript/features/system-prefs.html)
[macos - Set default web browser via command line? - Stack Overflow](https://stackoverflow.com/questions/17528688/set-default-web-browser-via-command-line)
[GitHub - kerma/defaultbrowser: Command line tool for getting and setting a default browser (HTTP handler) in Mac OS X](https://github.com/kerma/defaultbrowser)

*)
