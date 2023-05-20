-- script to extract the sharepoint online link from an office file path and put it on the clipboard.

-- this command extracts the sharepoint online link.
-- /usr/bin/grep -o "https://.*/" file.txt
-- /usr/bin/grep -o "https://.*/" <(pbpaste) -- to grep what's on the clipboard

-- we assume the link is on the clipboard already

-- TODO: figure out why have to use absolute paths for grep and pbpaste. Safer in the long run but annoying.
-- paste the link to stdout and pipe to grep
set run_cmd to "/usr/bin/pbpaste | /usr/bin/grep -o \"https://.*/\""

try
    set result to do shell script run_cmd
    set the clipboard to result
on error
    beep "2"
end try

-- example link
-- ms-excel:ofe%7Cu%7Chttps://microsoft.sharepoint.com/some_path/with_lots_of_dirs/and_a_file.xlsx
