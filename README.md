# Shell Script: Word Splitting Bug

This repository demonstrates a common yet subtle error in shell scripting involving unquoted variables in loops.  When iterating over a list of files, if a filename contains spaces, the loop will unexpectedly split the filename into multiple words.

## Bug Description:
The `bug.sh` script shows this issue.  The `files` array contains filenames, but the `for` loop doesn't properly handle filenames with spaces, causing each word in a filename to be treated as a separate file.

## Solution:
The `bugSolution.sh` script demonstrates the corrected code. By quoting the variable `$file` within the loop, the entire filename is preserved even if it contains spaces.

## How to reproduce:
1. Clone this repository.
2. Run `bug.sh`. Observe the unexpected output.
3. Run `bugSolution.sh`. Observe the corrected output.

This example highlights the importance of quoting variables in shell scripts, especially when dealing with filenames or other data that might contain spaces or special characters.