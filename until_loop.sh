#!/bin/bash
FILE="output.txt"
# Define the name of the target file to monitor for content
touch "${FILE}"
# Create an empty file named 'output.txt' (or update its timestamp if it already exists)
until [[ -s "${FILE}" ]]; do
# Start an until loop that runs as long as the specified file remains empty (size 0)
echo "${FILE} is empty..."
# Print a status message indicating that the file currently contains no data
echo "Checking again in 2 seconds..."
# Print a notification informing the user of the upcoming re-evaluation delay
sleep 2
# Pause the script execution for exactly 2 seconds before checking the file size again
done
# Close the until loop block once the file size is greater than zero bytes
echo "${FILE} appears to have some content in it!"
# Print a final confirmation message indicating data was detected and the loop has exited