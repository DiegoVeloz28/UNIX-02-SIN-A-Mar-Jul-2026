#!/bin/bash
# Check that exactly 2 arguments were provided
if [ "$#" -ne 2 ]; then
    # Print error message to stderr
    echo "Error: Missing arguments." >&2
    # Print usage instructions to stderr
    echo "Usage: $0 <name> <domain>" >&2
    # Exit with code 1 (error)
    exit 1
fi

# Store the first argument as the name label
NAME="$1"
# Store the second argument as the target domain
DOMAIN="$2"
# Set the name of the CSV output file
OUTPUT_FILE="ping_results.csv"

# If the CSV file doesn't exist yet, create it with a header row
if [ ! -f "$OUTPUT_FILE" ]; then
    echo "name,domain,result,datetime" > "$OUTPUT_FILE"
fi

# Ping the domain once (-c 1) with a 5-second timeout (-W 5), suppress all output
ping -c 1 -W 5 "$DOMAIN" > /dev/null 2>&1
# Capture the exit code of the ping command (0 = success, non-zero = failure)
PING_EXIT_CODE=$?

# Evaluate the ping result
if [ "$PING_EXIT_CODE" -eq 0 ]; then
    # Ping succeeded
    RESULT="success"
else
    # Ping failed
    RESULT="failure"
fi

# Print the ping result to the terminal
echo "Ping to '$DOMAIN': $RESULT"
# Get the current date and time in YYYY-MM-DD HH:MM:SS format
DATETIME=$(date "+%Y-%m-%d %H:%M:%S")
# Append a new row with all data to the CSV file
echo "$NAME,$DOMAIN,$RESULT,$DATETIME" >> "$OUTPUT_FILE"
# Confirm to the user that the result was saved
echo "Result saved to '$OUTPUT_FILE'."
# Exit with code 0 to indicate success
exit 0