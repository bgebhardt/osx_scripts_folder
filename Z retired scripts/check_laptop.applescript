#!/usr/bin/osascript


(* Figured out this approach from these 2 tips:

How to use Bonjour to find stuff
http://lists.apple.com/archives/applescript-users/2004/Oct/msg00465.html

Do shell script references
http://macscripter.net/viewtopic.php?id=24761
http://macscripter.net/viewtopic.php?id=26334

How to background and issue commands on the same line
http://serverfault.com/questions/71545/bash-put-a-job-in-the-background-and-then-tail-the-log
*)

set afpservers to (do shell script "date; mDNS -B _afpovertcp._tcp. & sleep 1; killAll mDNS")

(* Example output:
"Browsing for _afpovertcp._tcp.
Talking to DNS SD Daemon at Mach port 3843
Timestamp     A/R Flags Domain                   Service Type             Instance Name
 9:05:22.137  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro 
 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro 
 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro 
 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro 
 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        April GebhardtÕs Computer
 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro 
 9:05:22.138  Add     0 local.                   _afpovertcp._tcp.        bryan personal laptop"
*)

set theServer to "bryan personal laptop"


-- tell system events so this can be run on the cmd line.  see http://macscripter.net/viewtopic.php?id=26334
tell application "System Events"
	activate
	if afpservers contains theServer then
		my GrowlMessage(theServer & " is connected.", afpservers, false)
		--display dialog theServer & " is connected." & return & return & afpservers
	else
		my GrowlMessage(theServer & " is NOT connected. Check wireless network.", afpservers, true)
		--display dialog theServer & " is not connected.  Check wireless network." & return & return & afpservers
	end if
end tell

on GrowlMessage(sDescription, sStr, bDown)
	-- check for Growl
	set gGrowlEnabled to false
	tell application "System Events"
		set gGrowlEnabled to Â
			(count of (every process whose name is "GrowlHelperApp")) > 0
	end tell
	
	if gGrowlEnabled is false then
		display dialog sTitle & return & return & sDescription
		return
	end if
	
	-- set up Growl messages
	tell application "GrowlHelperApp"
		-- Make a list of all the notification types 
		-- that this script will ever send:
		set the allNotificationsList to Â
			{"Check Laptop Notification", "Laptop Not Connected Notification", "Test"}
		
		-- Make a list of the notifications 
		-- that will be enabled by default.      
		-- Those not enabled by default can be enabled later 
		-- in the 'Applications' tab of the growl prefpane.
		set the enabledNotificationsList to Â
			{"Check Laptop Notification", "Laptop Not Connected Notification"}
		
		-- Register our script with growl.
		-- You can optionally (as here) set a default icon 
		-- for this script's notifications.
		register as application Â
			"Growl Check Laptop AppleScript" all notifications allNotificationsList Â
			default notifications enabledNotificationsList Â
			icon of application "GrowlHelperApp"
		
		--	Send a Notification...
		if bDown is true then
			notify with name Â
				"Laptop Not Connected Notification" title Â
				sDescription description Â
				sStr application name "Growl Check Laptop AppleScript"
		else
			notify with name Â
				"Check Laptop Notification" title Â
				sDescription description Â
				sStr application name "Growl Check Laptop AppleScript"
		end if
	end tell
	
end GrowlMessage