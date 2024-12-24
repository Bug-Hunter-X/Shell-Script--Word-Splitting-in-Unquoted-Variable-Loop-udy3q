#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.

files=("file1.txt" "file2.txt" "file3.txt")

for file in $files; do
  # The issue is that if any filename contains spaces, the loop will iterate
  # over each word instead of the complete filename.  This is because word
  # splitting occurs when using unquoted variables in shell scripts.
  echo "Processing: $file"
  # Add processing logic here (e.g., processing the file's content)
done