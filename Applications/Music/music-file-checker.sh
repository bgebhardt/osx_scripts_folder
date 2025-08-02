#!/bin/bash

# Music Library File Checker
# Compares files in Media directory against Library.xml file paths

# Configuration
LIBRARY_XML="Library.xml"
MEDIA_DIR="/Volumes/Bert/Music/Media"
OUTPUT_FILE="missing_files.txt"
TEMP_DIR="/tmp/music_check_$$"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to URL decode file paths
url_decode() {
    echo -e "$(sed 's/+/ /g; s/%\([0-9A-F][0-9A-F]\)/\\x\1/g')"
}

# Function to cleanup on exit
cleanup() {
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}

#TODO keeping tmp for debugging
# Set up cleanup trap
#trap cleanup EXIT

# Check if required files exist
if [ ! -f "$LIBRARY_XML" ]; then
    print_error "Library.xml file not found in current directory"
    exit 1
fi

if [ ! -d "$MEDIA_DIR" ]; then
    print_error "Media directory not found: $MEDIA_DIR"
    exit 1
fi

# Create temporary directory
mkdir -p "$TEMP_DIR"

print_status "Starting music library file comparison..."
print_status "Library XML: $LIBRARY_XML"
print_status "Media Directory: $MEDIA_DIR"
print_status "Output File: $OUTPUT_FILE"

# Extract file paths from Library.xml
print_status "Extracting file paths from Library.xml..."
grep -o '<key>Location</key><string>file://[^<]*</string>' "$LIBRARY_XML" | \
    sed 's/<key>Location<\/key><string>file:\/\///' | \
    sed 's/<\/string>//' | \
    url_decode > "$TEMP_DIR/library_paths.txt"

# Count library entries
LIBRARY_COUNT=$(wc -l < "$TEMP_DIR/library_paths.txt")
print_status "Found $LIBRARY_COUNT file entries in Library.xml"

# Convert library paths to relative paths (remove the base media directory path)
print_status "Processing library paths..."
sed "s|^$MEDIA_DIR/||" "$TEMP_DIR/library_paths.txt" > "$TEMP_DIR/library_relative_paths.txt"

# Find all audio files in the media directory
print_status "Scanning media directory for audio files..."
find "$MEDIA_DIR" -type f \( \
    -iname "*.mp3" -o \
    -iname "*.m4a" -o \
    -iname "*.aac" -o \
    -iname "*.wav" -o \
    -iname "*.aiff" -o \
    -iname "*.flac" -o \
    -iname "*.m4p" -o \
    -iname "*.wma" -o \
    -iname "*.ogg" \
\) | sed "s|^$MEDIA_DIR/||" | sort > "$TEMP_DIR/media_files.txt"

# Count media files
MEDIA_COUNT=$(wc -l < "$TEMP_DIR/media_files.txt")
print_status "Found $MEDIA_COUNT audio files in media directory"

# Sort library paths for comparison
sort "$TEMP_DIR/library_relative_paths.txt" > "$TEMP_DIR/library_sorted.txt"

# Find files in media directory that are NOT in library
print_status "Comparing files to find missing entries..."
comm -23 "$TEMP_DIR/media_files.txt" "$TEMP_DIR/library_sorted.txt" > "$TEMP_DIR/missing_files.txt"

# Count missing files
MISSING_COUNT=$(wc -l < "$TEMP_DIR/missing_files.txt")

# Create output file with full paths
print_status "Creating output file..."
{
    echo "# Music Library File Check Results"
    echo "# Generated: $(date)"
    echo "# Library XML: $LIBRARY_XML"
    echo "# Media Directory: $MEDIA_DIR"
    echo "#"
    echo "# Summary:"
    echo "# - Files in Library.xml: $LIBRARY_COUNT"
    echo "# - Audio files in media directory: $MEDIA_COUNT"
    echo "# - Files missing from library: $MISSING_COUNT"
    echo "#"
    echo "# Files in media directory but missing from Library.xml:"
    echo ""
    
    if [ $MISSING_COUNT -gt 0 ]; then
        while IFS= read -r file; do
            echo "$MEDIA_DIR/$file"
        done < "$TEMP_DIR/missing_files.txt"
    else
        echo "# No missing files found!"
    fi
} > "$OUTPUT_FILE"

# Display results
echo ""
print_status "=== RESULTS ==="
print_status "Files in Library.xml: $LIBRARY_COUNT"
print_status "Audio files in media directory: $MEDIA_COUNT"

if [ $MISSING_COUNT -gt 0 ]; then
    print_warning "Files missing from library: $MISSING_COUNT"
    print_status "Missing files have been written to: $OUTPUT_FILE"
    echo ""
    print_status "First 10 missing files:"
    head -n 20 "$OUTPUT_FILE" | tail -n 10
    if [ $MISSING_COUNT -gt 10 ]; then
        echo "... and $(($MISSING_COUNT - 10)) more (see $OUTPUT_FILE for complete list)"
    fi
else
    print_status "All files in media directory are present in Library.xml!"
fi

# Optional: Show files in library but not in media directory
print_status "Checking for library entries pointing to non-existent files..."
comm -13 "$TEMP_DIR/media_files.txt" "$TEMP_DIR/library_sorted.txt" > "$TEMP_DIR/broken_links.txt"
BROKEN_COUNT=$(wc -l < "$TEMP_DIR/broken_links.txt")

if [ $BROKEN_COUNT -gt 0 ]; then
    print_warning "Found $BROKEN_COUNT library entries pointing to non-existent files"
    echo "# Broken library entries (files referenced in Library.xml but not found in media directory):" >> "$OUTPUT_FILE"
    while IFS= read -r file; do
        echo "# BROKEN: $MEDIA_DIR/$file" >> "$OUTPUT_FILE"
    done < "$TEMP_DIR/broken_links.txt"
else
    print_status "All library entries point to existing files"
fi

print_status "Complete results saved to: $OUTPUT_FILE"