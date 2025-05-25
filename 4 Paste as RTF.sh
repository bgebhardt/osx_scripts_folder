#!/bin/bash

# Trying an approach based on this article
# [Convert Markdown to rich text (with syntax highlighting!) in any macOS app | Andrew Heiss](https://www.andrewheiss.com/blog/2019/10/09/convert-md-rtf-macos-services/)

# for some reason this won't copy. Instead this script pastes converted Markdown

# NOT WORKING
# copy the selection
#osascript -e 'tell application "System Events" to keystroke "c" using command down'

# take whats on the clipboard and use pandoc to convert it to rtf and put back on the clipboard
# no doubt this is super fragile with no error checking but kind works.
export LC_CTYPE=UTF-8

clipboard_contents=$(pbpaste)

# check if contents are empty
if [[ -z "$clipboard_contents" ]]; then
    osascript -e 'display notification "Clipboard is empty!" with title "Markdown to RTF"'
    exit 0
fi

echo "$clipboard_contents" | /opt/homebrew/bin/pandoc -t rtf -s | pbcopy

# paste the selection
osascript -e 'tell application "System Events" to keystroke "v" using command down'

# beep twice so I know it ran
osascript -e 'beep 2'