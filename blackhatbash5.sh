#!/bin/bash
top
# Display real-time system tasks and resource usage interactively
top&
# Start the top resource monitor in the background as a background job
touch test && touch test123
# Create 'test' and, only if successful, create 'test123' using the AND operator
(ls; ps)
# Execute 'ls' and 'ps' sequentially inside a temporary subshell environment
ls; ps; whoami
# Run 'ls', 'ps', and 'whoami' sequentially in the current shell session
lzl || echo "el comando lzl fallo"
# Attempt to run 'lzl' and, because it fails, execute the backup echo command
echo "Hello World!" > output.txt
# Write "Hello World!" into 'output.txt', creating the file or overwriting it
echo "Bye World!" > output.txt
# Overwrite the contents of 'output.txt' with the string "Bye World!"
echo "Goodbye!" >> output.txt
# Append the string "Goodbye!" to the end of the existing 'output.txt' file
cat output.txt
# Display the final concatenated contents of 'output.txt'
ls -l / &> stdout_and_stderr.txt
# Redirect both standard output and standard error from 'ls' into a single file
cat stdout_and_stderr.txt
# Show the combined output and error log file contents
ls -l / 1> stdout.txt 2> stderr.txt
# Separate standard output (1) and standard error (2) into two different files
cat stdout.txt
# Display the successful output file containing the root directory listing
cat stderr.txt
# Display the error log file (should be empty if the 'ls' command succeeded)
ls -l / &>> stdout_and_stderr.txt
# Append both standard output and standard error to the end of the combined log file
cat stdout_and_stderr.txt
# Verify the newly appended data in the combined log file
lzl 2> error.txt
# Redirect only the error message from the failed 'lzl' command into a file
cat error.txt
# Display the captured error message to verify standard error redirection