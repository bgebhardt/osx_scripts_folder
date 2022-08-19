# output all files with bad character names

# inspired by this script
# https://github.com/soundsnw/mac-sysadmin-resources/blob/master/scripts/fix-onedrive-filenames-apfs.sh

# Great rename tool with a Windows Compatibility selection
# https://transnomino.bastiaanverreijt.com/
# more options: https://www.techpout.com/best-free-file-rename-software/

# issues to check for
# bad characters - " * : < > ? / \ |
# trailing and leading spaces
# filenames too long
# end with a period
# begin with 2 periods

# Find bad directory filenames
echo "$(date +%m%d%y-%H%M)"": Fixing illegal characters in directory names" | tee -a "$fixlog"
find "${onedrivefolder}" -type d -name '*[\\:*?"<>|]*' -print

# need to catch comma's and periods too.  Really it's ending on a period as file extensions are ok. Doesn't work very well right now.
find "${onedrivefolder}" -type d -name '*[\\:*?"<>|,.]*' -print
find . -type d -name '*[\\:*?"<>|,.]*' -print

# Find bad directory filenames
echo "$(date +%m%d%y-%H%M)"": Fixing illegal characters in filenames" | tee -a "$fixlog"
find "${onedrivefolder}" -name '*[\\:*?"<>|]*' -print


find "${onedrivefolder}" -name '*[\\:*?"<>|]*' -print | lc -l

# find leading spaces
echo "$(date +%m%d%y-%H%M)"": Fixing leading spaces in directory names" | tee -a "$fixlog"
find "${onedrivefolder}" -type d -name " *" -print
find . -type d -name " *" -print

# find trailing chars
echo "$(date +%m%d%y-%H%M)"": Fixing trailing characters in directory names" | tee -a "$fixlog"
find "${onedrivefolder}" -type d -name "* " -print >"$fixtrail"
find "${onedrivefolder}" -type d -name "*." -print >>"$fixtrail"

find . -type d -name "* " -print
find . -type d -name "*." -print


# cmds to fix names quickly

fixedname="$(echo "$name" | tr ':' '-' | tr '\\' '-' | tr '?' '-' | tr '*' '-' | tr '"' '-' | tr '<' '-' | tr '>' '-' | tr '|' '-')"

mv -vf "$line" "$path"'/'"$fixedname" >>"$fixlog"

mv -vf 


| tr ':' '-' | tr '\\' '-' | tr '?' '-' | tr '*' '-' | tr '"' '-' | tr '<' '-' | tr '>' '-' | tr '|' '-'

⚡ echo 460-9\:30\:08\ DRAFT.pdf | tr ':' '-' | tr '\\' '-' | tr '?' '-' | tr '*' '-' | tr '"' '-' | tr '<' '-' | tr '>' '-' | tr '|' '-'
460-9-30-08 DRAFT.pdf