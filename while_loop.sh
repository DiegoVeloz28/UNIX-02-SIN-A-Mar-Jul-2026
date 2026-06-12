#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop"
# Define the name of the trigger file that will signal the loop to terminate
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# Start a while loop that runs as long as the specified stop file does NOT exist
echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
# Print a status message indicating the stop signal file has not been created yet
echo "Checking again in 2 seconds..."
# Print a notification informing the user of the upcoming re-evaluation delay
sleep 2
# Pause the script execution for exactly 2 seconds before checking the condition again
done
# Close the conditional while loop block once the file is detected
echo "File was found! Exiting..."
# Print a final confirmation message indicating the script is terminating successfully
