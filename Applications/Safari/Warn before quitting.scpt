-- Script to warn before quitting Safari.
-- set it to command-Q via Scripts menu or Fast Script menu
-- inspired by http://apple.stackexchange.com/questions/151264/warn-before-quitting-in-safari
tell application "Safari"
	display dialog "Are you sure you want to quit Safari?"
	quit
end tell
