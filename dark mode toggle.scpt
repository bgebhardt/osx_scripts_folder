-- script to toggle global dark mode

--  [How to Switch Between Your Mac's Dark and Light Modes](https://lifehacker.com/switch-between-dark-and-light-mode-on-your-mac-with-thi-1838488087)

tell application "System Events"
  tell appearance preferences
    set dark mode to not dark mode
  end tell
end tell