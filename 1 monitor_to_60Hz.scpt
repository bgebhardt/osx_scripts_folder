-- Script that sets monitor to 60Hz
-- Workaround for issues with Dell monitor
-- see [Dell Monitor Screen Flickering When MacBook M1 Refresh Rate is Set as Variable ( 40-60 Hz ) | Dell US](https://www.dell.com/support/kbdoc/en-us/000197189/dell-s2722qc-monitor-screen-flickering-when-macbook-m1-refresh-rate-is-set-as-variable-40-60-hz?lang=en)

-- Pages that helped figure this out
-- [user interface - Selecting Pop Up Menu Buttons in AppleScript - Stack Overflow](https://stackoverflow.com/questions/36549556/selecting-pop-up-menu-buttons-in-applescript)
-- [Mac Automation Scripting Guide: Automating the User Interface](https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/AutomatetheUserInterface.html)

tell application "System Preferences"
	activate
	set current pane to pane id "com.apple.preference.displays"
	reveal (first anchor of current pane whose name is "displaysColorTab")
	delay 1 -- wait for pane to load. May not be long enough.
end tell

tell application "System Events"
	if UI elements enabled then
		tell window "Displays" of process "System Preferences"
			
			--set theButtons to buttons
			
			set theButton to button "Display Settings…"
			click theButton
			
			delay 0.2
			
			sheet 1
			set thePopups to pop up buttons of sheet 1
			
			set thePopup to item 3 of thePopups
			
			tell thePopup
				click
				delay 0.2
				click menu item "60 Hertz" of menu 1
				
			end tell
			
			click button "Done" of sheet 1
			
			
		end tell
		
		--		buttons
		
		
	else
		tell application "System Preferences"
			set current pane to pane "com.apple.preference.universalaccess"
			display dialog "UI element scripting is not enabled. Check \"Enable access for assistive devices\""
		end tell
	end if
	
end tell