-- 1 names from email list.applescript
-- Script to extract names from email list and return as comma separated list
-- 1 names from email list.applescript
-- Script to extract names from email list and return as comma separated list

-- Get clipboard contents
set emailList to the clipboard

-- AppleScript version
-- Get clipboard contents
set emailList to the clipboard

-- Define function to extract names from the email list
on extractNames(emailList)
    set AppleScript's text item delimiters to ";"
    set emailItems to text items of emailList
    set AppleScript's text item delimiters to ""
    
    set nameList to {}
    
    repeat with emailItem in emailItems
        -- Trim leading/trailing whitespace
        set emailItem to trimWhitespace(emailItem)
        
        -- Extract name part (before the email address)
        if emailItem contains "<" then
            set nameEnd to offset of "<" in emailItem
            if nameEnd > 1 then
                set namePart to text 1 thru (nameEnd - 1) of emailItem
                -- Trim the name part
                set namePart to trimWhitespace(namePart)
                set end of nameList to namePart
            end if
        else
            -- If no email format is found, use the whole item
            set end of nameList to emailItem
        end if
    end repeat
    
    -- Join names with commas
    set AppleScript's text item delimiters to ", "
    set resultString to nameList as string
    set AppleScript's text item delimiters to ""
    
    return resultString
end extractNames

-- Helper function to trim whitespace
on trimWhitespace(textToTrim)
    -- Remove leading/trailing spaces
    set textToTrim to do shell script "echo " & quoted form of textToTrim & " | sed 's/^[ ]*//' | sed 's/[ ]*$//'"
    return textToTrim
end trimWhitespace

-- Process the email list and set the result to clipboard
set namesOnly to extractNames(emailList)
set the clipboard to namesOnly

-- Display result
--display dialog "Names extracted: " & namesOnly buttons {"OK"} default button "OK"


-- -- Process the email list using shell commands; this didn't seem to work.
-- set namesOnly to do shell script "echo " & quoted form of emailList & " | 
--     tr ';' '\\n' | 
--     sed -E 's/^[[:space:]]+|[[:space:]]+$//g' |
--     sed -n 's/^([^<]*)<.*$/\\1/p; t; s/.*/&/p' |
--     sed -E 's/[[:space:]]+$//g' |
--     paste -sd ', ' -"

-- -- Set the result to clipboard
-- set the clipboard to namesOnly

-- -- Display result
-- display dialog "Names extracted: " & namesOnly buttons {"OK"} default button "OK"