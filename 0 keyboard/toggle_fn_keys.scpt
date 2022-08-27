--Script to toggle turning fn keys on and off.

-- Inspired by these web pages.
-- * [Releases - nelsonjchen/fntoggle](https://github.com/nelsonjchen/fntoggle/releases)
-- * [nelsonjchen/fntoggle: Hacked together OS X Function Key Toggle but it doesn't use gui scripting via applescript unlike almost everything else on the internets!](https://github.com/nelsonjchen/fntoggle)
-- * [macos - Toggle "Use all F1, F2 as standard keys" via script - Ask Different](https://apple.stackexchange.com/questions/59178/toggle-use-all-f1-f2-as-standard-keys-via-script)
-- * [macos - Using AppleScript to launch specific tabs in System Preferences panes - Ask Different](https://apple.stackexchange.com/questions/268952/using-applescript-to-launch-specific-tabs-in-system-preferences-panes#:~:text=tell%20application%20%22System%20Preferences%22%20activate%20set%20current%20pane,AppleScript%20Editor%20window%2C%20you%27ll%20see%20something%20like%20this%3A)
-- * [Activate and Deactivate function keys using AppleScript.](https://gist.github.com/enplotz/9747447)
-- * [Applescript to toggle F1-F11 keys as function keys | MacRumors Forums](https://forums.macrumors.com/threads/applescript-to-toggle-f1-f11-keys-as-function-keys.383969/)

tell application "System Preferences"
	set current pane to pane "com.apple.preference.keyboard"
	activate
	delay 1 -- wait for pane to load. May not be long enough.
end tell


tell application "System Events"
	if UI elements enabled then
		tell tab group 1 of window "Keyboard" of process "System Preferences"
			
			set theBoxes to checkboxes
			--checkbox "Use F1, F2, etc. keys as standard function keys" -- for some reason I can look up the checkbox by name
			set funcCheckBox to item 3 of theBoxes
			
			--click funcCheckBox
			if (name of funcCheckBox is "Use F1, F2, etc. keys as standard function keys") then
				click funcCheckBox -- to toggle it
				
				-- beep once for off; beep twice for ons
				tell funcCheckBox
					if value is 0 then
						beep 1
					else
						beep 2
					end if
				end tell
				
				-- use this if I want to look up the value and select it; this would be for a script to activate fn keys.
				(*
				tell theCheckbox
					if not (its value as boolean) then click theCheckbox
				end tell
				*)
				
			else
				display dialog "Wrong checkbox found. Did system preferences UI change?"
			end if
			
		end tell
	else
		tell application "System Preferences"
			set current pane to pane "com.apple.preference.universalaccess"
			display dialog "UI element scripting is not enabled. Check \"Enable access for assistive devices\""
		end tell
	end if
end tell

tell application "System Preferences"
	quit
end tell