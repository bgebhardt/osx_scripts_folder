-- Script to select choose folder menu item.
-- Set hotkey to cmd-shift-V to simulate gmail shortcut
-- MacOS shortcut for this doesn't seem to work always trying this as a workaround.
-- Built in gmail shortcut for Outlook doesn't always work either.

-- Links with useful examples
-- * [menu bar - Access application submenus with AppleScript - Ask Different](https://apple.stackexchange.com/questions/134936/access-application-submenus-with-applescript)
-- * [Mac Automation Scripting Guide: Automating the User Interface](https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/AutomatetheUserInterface.html)

activate application "Microsoft Outlook"
--delay 1

tell application "System Events"
	tell process "Microsoft Outlook"
		--		click menu item "Choose Folder..." of menu 1 of menu item "Zoom" of menu 1 of menu bar item "View" of menu bar 1
		name of every menu of menu bar 1
		
		set m1 to menu "Message" of menu bar 1
		
		name of every menu item of m1
		
		set m2 to menu 1 of menu item "Move" of m1
		
		
		name of every menu item of m2
		
		click menu item "Choose Folder..." of m2
		
		
	end tell
end tell