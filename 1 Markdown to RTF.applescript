# script to call shortcut to convert clipboard to markdown.
# it takes markdown on the clipboard and copies rich text onto the clipboard.
# (maybe should use a shell script instead but so far my shortcut has worked the best)

# Shortcut uses Matthew Cassinelli's [Convert rich text to Markdown – Matthew Cassinelli](https://matthewcassinelli.com/shortcuts/convert-rich-text-to-markdown/)

# it is inspired by Aaron Swartz's html2text script).
# [GitHub - aaronsw/html2text: Convert HTML to Markdown-formatted text.](https://github.com/aaronsw/html2text)

# more context on shortcuts to clean up text and work with Markdown
# [Shortcuts Rewind: Linking Tricks Using Markdown and Rich Text - MacStories](https://www.macstories.net/stories/shortcuts-rewind-linking-tricks-using-markdown-and-rich-text/)

# how to call shortcuts from AppleScript is explained more here.
# [Shortcuts, AppleScript, Terminal: Working around automation roadblocks – Six Colors](https://sixcolors.com/post/2022/01/shortcuts-applescript-terminal-working-around-automation-roadblocks/)

# simple script to call the shortcut. Doing it this way so I can add a keyboard shortcut via FastScripts
# should be able to add a keyboard shortcut to a shortcut but it doesn't seem to work.

# try to copy the selection (a bit more fragile then I'd like but should work in most apps)
tell application "System Events" to keystroke "c" using command down

# call the shortcut to convert it
tell application "Shortcuts Events" to run the shortcut named "Markdown to Rich Text"