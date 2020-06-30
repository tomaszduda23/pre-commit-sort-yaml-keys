#!/bin/sh

# use a tempfile and move it back aftwards
# because some tools don't handle overwriting
# the current file whislt still open very
# well at all.
file=$(mktemp)
npx yml-sorter --input "$1" --output "$file"
mv "$file" "$1"
rm -f "$file"
