#!/bin/bash
USER_INPUT="${1}"
# Assign the first command-line argument provided to the script to the variable USER_INPUT
if [[ -z "${USER_INPUT}" ]]; then
# Check if the USER_INPUT variable is empty or null
echo "You must provide an argument!"
# Print an error message stating that a command-line argument is required
exit 1
# Terminate script execution immediately with a failure status code of 1
fi
# Close the initial input validation conditional block
if [[ -f "${USER_INPUT}" ]]; then
# Test if the path stored in USER_INPUT points to an existing regular file
echo "${USER_INPUT} is a file."
# Print a message confirming that the specified input is a file
elif [[ -d "${USER_INPUT}" ]]; then
# Test if the path stored in USER_INPUT points to an existing directory
echo "${USER_INPUT} is a directory."
# Print a message confirming that the specified input is a directory
else
# Execute the fallback block if the input path is neither a file nor a directory
echo "${USER_INPUT} is not a file or a directory."
# Print a message indicating the input does not match any known file or directory type
fi
# Close the file type evaluation conditional block
