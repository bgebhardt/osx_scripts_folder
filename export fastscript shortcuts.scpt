-- script to export all the shortcut keys into a comma separated list.
-- this makes it easier to tranfer shortcuts to another Mac.
-- Unfortunately there is no way to set the keyboard shortcut through AppleScript.
tell application "FastScripts"
	
	get top level script collection
	get name of every recently run script item
	
	get (keyboard shortcut of script item 1 is missing value)
	
	--	get every script item where (keyboard shortcut is missing value)
	
	properties of script item 1
	
	set theShortcutsList to "name, shortcut, script_file"
	set theShortcutsCount to 0
	repeat with theItem in (every script item)
		if keyboard shortcut of theItem is not missing value then
			log (get name of theItem)
			log (get keyboard shortcut of theItem)
			log (get script file of theItem)
			set itemProps to "\"" & (name of theItem) & "\", \"" & (shortcut string of keyboard shortcut of theItem) & "\", " & (script file of theItem)
			set theShortcutsList to theShortcutsList & return & itemProps
			set theShortcutsCount to theShortcutsCount + 1
		end if
	end repeat
	
	log theShortcutsCount -- 41
	
	set the clipboard to theShortcutsList
	theShortcutsList
	
end tell