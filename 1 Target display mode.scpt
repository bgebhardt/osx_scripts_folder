(* simple script to switch to Target display mode (TDM) by hitting command-F2.
 key code 120 = F2.
 see http://apple.stackexchange.com/questions/36943/how-do-i-automate-a-key-press-in-applescript which has an easy way to get a list of keycodes.  Use this command:
-- grep '^ *kVK' /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h|tr -d ,|while read x y z;do printf '%d %s %s\n' $z $z ${x#kVK_};done|sort -n
 *)
tell application "System Events" to key code 120 using command down