-- Add Missing Tracks to Apple Music
-- This script reads the missing_files.txt output and adds those tracks to Apple Music

-- Configuration
set missingFilesPath to "missing_files.txt" -- Path to the missing files list
set batchSize to 10 -- Number of files to add at once (to avoid overwhelming the system)
set delayBetweenBatches to 2 -- Seconds to wait between batches

-- Initialize counters
set totalFiles to 0
set successCount to 0
set errorCount to 0
set skippedCount to 0
set errorFiles to {}

-- Function to check if a line is a file path (not a comment)
on isFilePath(theLine)
	return (theLine does not start with "#") and (theLine does not start with "") and (length of theLine > 0)
end isFilePath

-- Function to check if file exists
on fileExists(filePath)
	try
		set fileAlias to filePath as alias
		return true
	on error
		return false
	end try
end fileExists

-- Function to get file extension
on getFileExtension(fileName)
	set AppleScript's text item delimiters to "."
	set fileExtension to last text item of fileName
	set AppleScript's text item delimiters to ""
	return fileExtension
end getFileExtension

-- Function to check if file is a supported audio format
on isSupportedAudioFile(filePath)
	set supportedExtensions to {"mp3", "m4a", "aac", "wav", "aiff", "flac", "m4p"}
	
	tell application "Finder"
		set fileName to name of (filePath as alias)
	end tell
	
	set fileExt to my getFileExtension(fileName)
	return supportedExtensions contains fileExt
end isSupportedAudioFile

-- Main execution starts here
display dialog "This script will add all missing tracks from 'missing_files.txt' to your Apple Music library. Make sure Apple Music is running before continuing." buttons {"Cancel", "Continue"} default button "Continue"

if button returned of result is "Cancel" then
	return
end if

-- Check if missing files list exists
try
	set missingFilesFile to missingFilesPath as alias
on error
	display dialog "Error: Cannot find 'missing_files.txt' file in the current directory. Please run the library checker script first." buttons {"OK"}
	return
end try

-- Read the missing files list
try
	set fileContent to read missingFilesFile as Çclass utf8È
	set fileLines to paragraphs of fileContent
on error errMsg
	display dialog "Error reading missing_files.txt: " & errMsg buttons {"OK"}
	return
end try

-- Filter out comments and empty lines to get actual file paths
set filesToAdd to {}
repeat with aLine in fileLines
	if my isFilePath(aLine) then
		set end of filesToAdd to aLine
	end if
end repeat

set totalFiles to count of filesToAdd

if totalFiles is 0 then
	display dialog "No missing files found in the list to add." buttons {"OK"}
	return
end if

-- Confirm before proceeding
display dialog "Found " & totalFiles & " files to add to Apple Music library. This process may take several minutes. Continue?" buttons {"Cancel", "Add Files"} default button "Add Files"

if button returned of result is "Cancel" then
	return
end if

-- Start adding files to Apple Music
display dialog "Starting to add files to Apple Music library..." giving up after 2

tell application "Music"
	activate
	
	-- Process files in batches
	set currentBatch to 0
	set filesInCurrentBatch to 0
	set currentBatchFiles to {}
	
	repeat with i from 1 to totalFiles
		set currentFile to item i of filesToAdd
		set filesInCurrentBatch to filesInCurrentBatch + 1
		set end of currentBatchFiles to currentFile
		
		-- Process batch when it reaches batchSize or we're at the last file
		if filesInCurrentBatch is batchSize or i is totalFiles then
			set currentBatch to currentBatch + 1
			
			-- Show progress
			if totalFiles > batchSize then
				display dialog "Processing batch " & currentBatch & " (" & filesInCurrentBatch & " files)..." giving up after 1
			end if
			
			-- Add current batch of files
			repeat with fileToAdd in currentBatchFiles
				try
					-- Check if file exists and is supported
					if my fileExists(fileToAdd) then
						if my isSupportedAudioFile(fileToAdd) then
							-- Add the file to library
							set trackAlias to fileToAdd as alias
							add trackAlias
							set successCount to successCount + 1
						else
							-- Skip unsupported file types
							set skippedCount to skippedCount + 1
						end if
					else
						-- File doesn't exist
						set errorCount to errorCount + 1
						set end of errorFiles to fileToAdd & " (file not found)"
					end if
					
				on error errMsg
					-- Error adding file
					set errorCount to errorCount + 1
					set end of errorFiles to fileToAdd & " (error: " & errMsg & ")"
				end try
			end repeat
			
			-- Reset batch
			set filesInCurrentBatch to 0
			set currentBatchFiles to {}
			
			-- Brief pause between batches to avoid overwhelming the system
			if i is not totalFiles and delayBetweenBatches > 0 then
				delay delayBetweenBatches
			end if
		end if
		
		-- Update progress every 50 files
		if i mod 50 is 0 then
			display dialog "Processed " & i & " of " & totalFiles & " files..." giving up after 1
		end if
	end repeat
end tell

-- Generate results summary
set resultText to "IMPORT RESULTS:" & return & return
set resultText to resultText & "Total files processed: " & totalFiles & return
set resultText to resultText & "Successfully added: " & successCount & return
set resultText to resultText & "Skipped (unsupported): " & skippedCount & return
set resultText to resultText & "Errors: " & errorCount & return & return

if errorCount > 0 then
	set resultText to resultText & "FILES WITH ERRORS:" & return
	repeat with errorFile in errorFiles
		set resultText to resultText & "¥ " & errorFile & return
	end repeat
	set resultText to resultText & return
end if

if successCount > 0 then
	set resultText to resultText & "Successfully added " & successCount & " tracks to your Apple Music library!"
else
	set resultText to resultText & "No tracks were successfully added."
end if

-- Display results
display dialog resultText buttons {"Save Log", "OK"} default button "OK"

if button returned of result is "Save Log" then
	-- Save results to a log file
	set logFile to (path to desktop as string) & "Apple Music Import Log.txt"
	try
		set fileRef to open for access file logFile with write permission
		set eof of fileRef to 0
		write resultText to fileRef
		close access fileRef
		display dialog "Import log saved to desktop as 'Apple Music Import Log.txt'" buttons {"OK"}
	on error
		try
			close access fileRef
		end try
		display dialog "Error saving log file to desktop." buttons {"OK"}
	end try
end if

-- Final summary
if successCount > 0 then
	display dialog "Import complete! Added " & successCount & " new tracks to Apple Music." buttons {"OK"}
else
	display dialog "Import completed, but no new tracks were added. Check the log for details." buttons {"OK"}
end if