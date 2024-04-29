#!/bin/bash
# This script finds all *.md files modified since a specified date and concatenates them into a single output file.
# It also converts the output file to a docx using Pandoc.
# It is meant to be used with Obsidian to export notes modified since a specified date.

start_date="2024-01-01"
source_dir="/Users/bryan/OneDrive - Microsoft/Obsidian/Work"
output_file_stem="obsidian_notes_flat_from_${start_date}"
output_file="${output_file_stem}.md"
pdf_file="${output_file_stem}.pdf"
docx_file="${output_file_stem}.docx"
file_list="file_list_${output_file_stem}.txt"
file_list2="file_list_2_${output_file_stem}.txt"

echo "Finding files modified since $start_date..."
echo "Appending file names to $file_list..."

# Find all *.md files modified since start_date and append their names to file_list

# simple original version
find "$source_dir" -name "*.md" -newermt "$start_date" -exec echo {} \; >| "$file_list"

# Create the list in a markdown internal notes format. Can create this note and export from Obsidian with images, etc.
# But this is often too much for Obsidian to handle in a single note.
echo "# FILES for ${output_file_stem}" >| "$file_list2"

sed 's|.*/||; s|\(.*\)|![[\1]]|' "$file_list" >> "$file_list2"

# sed 's|.*/||' "$file_list" >> "$file_list2"
#find "$source_dir" -name "*.md" -newermt "$start_date" -exec echo "![[$(basename {})]]" \; >> "$file_list2"

#find "$source_dir" -name "*.md" -newermt "$start_date" -exec echo "![[$(basename $1 | sed 's/\.[^.]*$//')]]" \; >> "$file_list"
#find "$source_dir" -name "*.md" -newermt "$start_date" -exec echo "![[$(basename {})]]" \; >> "$file_list"

echo "Concatenating files into $output_file..."

# Find all *.md files modified since start_date and concatenate them into output_file
# adds file name as a H1 markdown heading before every file
find "$source_dir" -name "*.md" -newermt "$start_date" -exec sh -c 'echo "\n\n# FILE: $1"; cat "$1"' _ {} \; >| "$output_file"
#old find "$source_dir" -name "*.md" -newermt "$start_date" -exec cat {} >| "$output_file" \;

echo "Converting $output_file to $docx_file..."

# convert to word ignoring yaml metadata block
#pandoc --from markdown-yaml_metadata_block "$output_file" -o "$docx_file"

echo "Done!"

# Loop through each month since start_date
# current_date="$start_date"
# while [[ "$current_date" < "$(date +%Y-%m-%d)" ]]; do
#     # Extract year and month from current_date
#     year=$(date -d "$current_date" +%Y)
#     month=$(date -d "$current_date" +%m)
#     # Create the output file name for the current month
#     output_file="${output_file}_${year}-${month}.md"
#     # Find all *.md files modified in the current month and concatenate them into the output file
#     find "$source_dir" -name "*.md" -newermt "$current_date" -not -newermt "$(date -d "$current_date + 1 month" +%Y-%m-%d)" -exec cat {} >> "$output_file" \;
#     # Update current_date to the next month
#     current_date=$(date -d "$current_date + 1 month" +%Y-%m-%d)
# done



# goes through file list and cats directies but creates dupes.
# Create a file for every unique directory
# while IFS= read -r file; do
#     directory=$(dirname "$file")
#     filename=$(basename "$directory")
#     directory_file="${filename}.md"
#     # Find all *.md files in the directory and concatenate them into the directory file
#     find "$directory" -name "*.md" -newermt "$start_date" -exec cat {} >> "$directory_file" \;

# done < "$file_list"

# Convert output.md to PDF using Pandoc
# uses too much memory!!
#pandoc "$output_file" -o "$pdf_file"

