(* simple script to switch to Target display mode (TDM) by hitting command-F2.
 key code 144 = brightness up.

 This does not work with a non-Apple external keyboard plugged in.  It also does not work
	with no keyboard plugged in. It does work if the Apple keyboard is plugged in.  

 see following links for info:
	http://bogner.sh/2013/07/os-x-how-to-use-an-imac-as-monitor/
	http://apple.stackexchange.com/questions/36943/how-do-i-automate-a-key-press-in-applescript 
		which has an easy way to get a list of keycodes.  Use this command:
-- grep '^ *kVK' /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h|tr -d ,|while read x y z;do printf '%d %s %s\n' $z $z ${x#kVK_};done|sort -n
	(unfortunately command assumes an OS version before 10.8.)
 *)
tell application "System Events" to key code 144 using command down