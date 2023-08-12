-- script to eject all disks

-- Inspired by these posts
-- * [macbook pro - How to Eject All External Partitions Quickly? - Ask Different](https://apple.stackexchange.com/questions/143421/how-to-eject-all-external-partitions-quickly/446460#446460)
-- * [keyboard - Shortcut to eject all external hard drives but not MobileBackups - Ask Different](https://apple.stackexchange.com/questions/86005/shortcut-to-eject-all-external-hard-drives-but-not-mobilebackups/446461#446461)
-- * [Using Keyboard Maestro and AppleScript to Eject External Drives - MacSparky](https://www.macsparky.com/blog/2022/01/using-keyboard-maestro-and-applescript-to-eject-external-drives/)


display dialog "Eject Gonzo?"
try
	-- volumes owned by "system" are TimeMachine backups so filter those out.
	-- this is a fragile approach as there could be system owned external drives but not in my set up.
	-- eject only local volumes keeps cloud drives mounted (like Google Drive)
	tell application "Finder"
		eject disk "Gonzo"
		-- (every disk whose ejectable is true and local volume is true and format is not unknown format and owner is not "system")
		
	end tell
	beep 2 -- to indicate it was successful
on error
	display dialog "Unable to eject disk." buttons {"Close"} default button "Close"
end try


(*
-- TODO
turn into an eject/mount disk toggle
*)