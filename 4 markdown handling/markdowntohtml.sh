#!/bin/bash
# markdowntohtml.sh
# Converts markdown from clipboard to HTML, placing both representations on clipboard:
#   - Apps supporting rich text (Mail, Pages, etc.): pastes rendered HTML
#   - Apps accepting plain text only: pastes original markdown

# in @scripts/markdowntohtml.sh write a script that will convert what's on the clipboard from markdown to rendered HTML. 

# Ideally I want both the original plaintext markdown and HTML representations on the clipboard so they paste well in both situations.

# Use the approach taken here but do not include "-s" or font suggestions. I think leaving off "-s" on pandoc will remove any font embeddings.
# [Convert Markdown to rich text (with syntax highlighting!) in any macOS app | Andrew Heiss – Andrew Heiss](https://www.andrewheiss.com/blog/2019/10/09/convert-md-rtf-macos-services/) 

PLAY_SOUND="${PLAY_SOUND:-true}"

set -euo pipefail

export LC_CTYPE=UTF-8

if ! command -v pandoc &>/dev/null; then
    echo "Error: pandoc is not installed. Run: brew install pandoc" >&2
    exit 1
fi

if ! command -v swift &>/dev/null; then
    echo "Error: swift is not installed. Run: xcode-select --install" >&2
    exit 1
fi

TMP_DIR="${TMPDIR:-/tmp}/markdowntohtml"
MARKDOWN_FILE="$TMP_DIR/input.md"
HTML_FILE="$TMP_DIR/output.html"

mkdir -p "$TMP_DIR"

pbpaste > "$MARKDOWN_FILE"

if [ ! -s "$MARKDOWN_FILE" ]; then
    echo "Error: Clipboard is empty" >&2
    exit 1
fi

pandoc -f markdown -t html --syntax-highlighting=pygments "$MARKDOWN_FILE" -o "$HTML_FILE"

if [ ! -s "$HTML_FILE" ]; then
    echo "Error: Pandoc conversion failed" >&2
    exit 1
fi

SWIFT_BINARY="$TMP_DIR/setclipboard"

if [ ! -f "$SWIFT_BINARY" ]; then
    echo "Compiling clipboard helper (one-time)..." >&2
    cat > "$TMP_DIR/setclipboard.swift" << 'SWIFT'
import Cocoa
let markdown = try! String(contentsOfFile: CommandLine.arguments[1], encoding: .utf8)
let html     = try! String(contentsOfFile: CommandLine.arguments[2], encoding: .utf8)
let pb = NSPasteboard.general
pb.clearContents()
pb.declareTypes([.html, .string], owner: nil)
pb.setString(html,     forType: .html)
pb.setString(markdown, forType: .string)
SWIFT
    swiftc "$TMP_DIR/setclipboard.swift" -o "$SWIFT_BINARY"
fi

"$SWIFT_BINARY" "$MARKDOWN_FILE" "$HTML_FILE"

echo "Done: clipboard has HTML (rich text) and markdown (plain text) representations"
[[ "$PLAY_SOUND" == "true" ]] && afplay /System/Library/Sounds/Blow.aiff