##  Copyright (c) 2011-2013 Davide Ficano. All rights reserved.
##  http://visualdiffer.com
##
##  This program is free software; you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation; either version 2 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  Bug fixes, suggestions and comments should be sent to:
##  davide.ficano@visualdiffer.com

# AppleScript to compare two files or folders selected in Finder using VisualDiffer.
# taken from [visualdiffer/scripts](https://github.com/visualdiffer/scripts)

tell application "Finder"
	set selected_files to selection
end tell

set visdiff_path to "/Applications/VisualDiffer.app/Contents/Helpers/visdiff"

set user_home to POSIX path of (path to home folder) as text

# Temporary path used to store first path selected
set first_selected_holder_path to user_home & "visualdiffer_cmp"

set files_count to count (selected_files)

on removeFile(path)
	do shell script "rm -f \"" & path & "\""
end removeFile

-- display dialog path_holder_path
try
	if (files_count = 2) then
		removeFile(first_selected_holder_path)
		set left_path to (POSIX path of (item 1 in selected_files as text))
		set right_path to (POSIX path of (item 2 in selected_files as text))
		do shell script visdiff_path & " \"" & left_path & "\" \"" & right_path & "\""
	else if (files_count = 1) then
		--	try
		set posixFile to POSIX file first_selected_holder_path as text
		
		tell application "Finder"
			if exists first_selected_holder_path as POSIX file then
				set f to (open for access posixFile)
				set left_path to (read f for (get eof f))
				close access f
				
				set right_path to (POSIX path of (item 1 in selected_files as text))
				do shell script visdiff_path & " \"" & left_path & "\" \"" & right_path & "\""
				do shell script "rm \"" & first_selected_holder_path & "\""
			else
				set left_path to (POSIX path of (item 1 in selected_files as text))
				
				set nref to open for access file posixFile with write permission
				close access nref
				write left_path to file posixFile
			end if
		end tell
	end if
on error errmsg
	removeFile(first_selected_holder_path)
	display dialog "Error while executing VisualDiffer
" & errmsg buttons {"Close"}
end try