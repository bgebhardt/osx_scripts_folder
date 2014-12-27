(* simple script to switch to Target display mode (TDM) by hitting command-F2.
 key code 144 = brightness up.

 This does not work with a non-Apple external keyboard plugged in.  It also does not work
	with no keyboard plugged in. It does work if the Apple keyboard is plugged in.  

 see following links for info/ideas how to do this:
	http://bogner.sh/2013/07/os-x-how-to-use-an-imac-as-monitor/ - os x app to do it.
	https://github.com/duanefields/VirtualKVM - alternate app that engaged TDM and disables Bluetooth
	https://discussions.apple.com/thread/3179367?start=15&tstart=0
	http://apple.stackexchange.com/questions/36943/how-do-i-automate-a-key-press-in-applescript 
		which has an easy way to get a list of keycodes.  Use this command:
-- grep '^ *kVK' /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h|tr -d ,|while read x y z;do printf '%d %s %s\n' $z $z ${x#kVK_};done|sort -n
	(unfortunately command assumes an OS version before 10.8.)

	how to toggle bluetooth on/off via AppleScript
	http://apple.stackexchange.com/questions/152333/toggle-bluetooth-applescript-not-working-in-yosemite
	https://discussions.apple.com/thread/3179367 -- how to toggle in 10.8
	
 *)

-- toggle on TDM
tell application "System Events" to key code 144 using command down

delay 2

-- turn off Bluetooth to allow keyboard to pair with other computer.
-- this script toggles Bluetooth between on off.
-- TODO: need a way to toggle bluetooth on, reconnect the keyboard, and then execute TDM
-- TODO: should also find a way to check if bluetooth is on or off.
my BlueToothTogglePreYosemite()


on BlueToothTogglePreYosemite()
	tell application "System Preferences"
		reveal pane id "com.apple.preferences.Bluetooth"
		-- activate
		
		set the current pane to pane id "com.apple.preferences.Bluetooth"
		
		try
			tell application "System Events" to tell process "System Preferences"
				click checkbox "On" of window "Bluetooth"
				
			end tell
			
		on error
			tell application "System Events" to tell process "System Preferences"
				--TODO: think about what to do on an error
				--click button "Turn Bluetooth On" of window "Bluetooth"
				--quit
			end tell
			
		end try
		
	end tell
end BlueToothTogglePreYosemite

on BlueToothToggleYosemite()
	tell application "System Preferences"
		reveal pane id "com.apple.preferences.Bluetooth"
		-- activate
		
		set the current pane to pane id "com.apple.preferences.Bluetooth"
		
		try
			tell application "System Events" to tell process "System Preferences"
				click button "Turn Bluetooth Off" of window "Bluetooth"
				
				click button "Turn Bluetooth Off" of sheet 1 of window "Bluetooth" of application process "System Preferences" of application "System Events"
			end tell
			
			--delay 1
			
		on error
			tell application "System Events" to tell process "System Preferences"
				click button "Turn Bluetooth On" of window "Bluetooth"
				quit
			end tell
			
		end try
		
	end tell
end BlueToothToggleYosemite