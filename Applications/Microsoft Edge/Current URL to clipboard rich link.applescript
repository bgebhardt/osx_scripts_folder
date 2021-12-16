-- Script that automates copying the current tab's url. 
-- This copies in Edge's new rich link format.
tell application "Microsoft Edge"
	activate
	
	tell application "System Events"
		delay 0.5
		keystroke "l" using command down
		delay 0.5
		keystroke "c" using command down
	end tell
	
end tell