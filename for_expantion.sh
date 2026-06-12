#!/bin/bash
for file in example_file*; do
# Iterate through all files in the current directory whose names start with "example_file"
if [[ "${file}" == "example_file1" ]]; then
# Evaluate if the name of the current file in the loop matches exactly "example_file1"
echo "Skipping the first file"
# Print a notification message stating that this specific file will be bypassed
continue
# Skip the remaining commands in the current iteration and jump straight to the next file
fi
# Close the conditional skip evaluation block
echo "${RANDOM}" > "${file}"
# Generate a random integer and write it into the current file, overwriting its contents
done
# Close the file iteration loop block