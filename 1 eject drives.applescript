-- script to eject all disks

-- Inspired by these posts
-- * [macbook pro - How to Eject All External Partitions Quickly? - Ask Different](https://apple.stackexchange.com/questions/143421/how-to-eject-all-external-partitions-quickly/446460#446460)
-- * [keyboard - Shortcut to eject all external hard drives but not MobileBackups - Ask Different](https://apple.stackexchange.com/questions/86005/shortcut-to-eject-all-external-hard-drives-but-not-mobilebackups/446461#446461)
-- * [Using Keyboard Maestro and AppleScript to Eject External Drives - MacSparky](https://www.macsparky.com/blog/2022/01/using-keyboard-maestro-and-applescript-to-eject-external-drives/)

-- TODO need to error check if they are already mounted or not
-- look at command line options to do this.

-- display dialog "Eject Gonzo and Grover?"

-- volumes owned by "system" are TimeMachine backups so filter those out.
-- this is a fragile approach as there could be system owned external drives but not in my set up.
-- eject only local volumes keeps cloud drives mounted (like Google Drive)

set diskList to { "Gonzo", "Grover" }

repeat with theDisk in diskList
  
  try
	do shell script "/usr/sbin/diskutil eject " & theDisk 

	delay 2 -- wait 2 seconds

	beep 2
	
	on error
		display dialog "Unable to eject disk " & theDisk & "." buttons {"Close"} default button "Close"
	end try

end repeat


(*
reference shell commands
use do shell script and disk util instead 
diskutil eject Grover
Disk Grover ejected
diskutil eject Gonzo
Disk Gonzo ejected
diskutil mountDisk Gonzo
Volume(s) mounted successfully
diskutil mountDisk Grover
Volume(s) mounted successfully
*)
