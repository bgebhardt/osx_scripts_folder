-- script to type the current date
-- inspired by https://apple.stackexchange.com/questions/242547/how-to-automatically-paste-todays-date-with-keyboard-shortcut#:~:text=Use%20the%20search%20to%20find%20and%20add%20action%3A,%C2%AC%20%28day%20of%20_Date%20as%20text%29%20end%20tell

tell application "System Events"
	
	set dt to (short date string of (get current date))
	
	repeat with theChar in (every character of dt)
		keystroke theChar
	end repeat
	
end tell

-- this version will do keystrokes not the clipboard
(*
tell application "System Events"
	set _Date to (current date)
	keystroke ¬
		(year of _Date as text) & "_" & ¬
		text -2 thru -1 of ("00" & ((month of _Date) as integer)) & "_" & ¬
		(day of _Date as text)
end tell
*)