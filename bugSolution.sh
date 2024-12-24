#!/bin/bash

# This script corrects the issue by quoting the variable in the loop.

files=("file1.txt" "file2.txt" "file3.txt" "file with spaces.txt")

for file in "$files[@]"; do
  # Quoting "$files[@]" iterates over each element in the array, preserving spaces.
  echo "Processing: $file"
  # Add processing logic here (e.g., processing the file's content)
done