#!/bin/bash
# ping_check.sh - Pings a domain and logs the result to a CSV file
# Usage: ./ping_check.sh <name> <domain>
# Example: ./ping_check.sh mysite nostarch.com

# ─── 1. ARGUMENT VALIDATION ───────────────────────────────────────────────────

# Check that exactly 2 arguments were provided
if [ "$#" -ne 2 ]; then
    # Print an error message to stderr (standard error output)
    echo "Error: Missing arguments." >&2
    # Print usage instructions to stderr
    echo "Usage: $0 <name> <domain>" >&2
    # Exit with code 1 (conventional code for general errors)
    exit 1
fi

# ─── 2. ASSIGN ARGUMENTS TO VARIABLES ─────────────────────────────────────────

# Store the first argument as the "name" label
NAME="$1"

# Store the second argument as the target domain to ping
DOMAIN="$2"

# ─── 3. DEFINE OUTPUT FILE ────────────────────────────────────────────────────

# Set the name of the CSV output file
OUTPUT_FILE="ping_results.csv"

# If the CSV file does not yet exist, create it and write the header row
if [ ! -f "$OUTPUT_FILE" ]; then
    echo "name,domain,result,datetime" > "$OUTPUT_FILE"
fi

# ─── 4. PING THE DOMAIN ───────────────────────────────────────────────────────

# Run ping with 1 packet (-c 1) and a 5-second timeout (-W 5)
# Redirect all output to /dev/null so nothing prints to the terminal
ping -c 1 -W 5 "$DOMAIN" > /dev/null 2>&1

# Capture the exit code of the ping command (0 = success, non-zero = failure)
PING_EXIT_CODE=$?

# ─── 5. INTERPRET PING RESULT ─────────────────────────────────────────────────

# If the exit code is 0, ping was successful; otherwise it failed
if [ "$PING_EXIT_CODE" -eq 0 ]; then
    RESULT="success"
else
    RESULT="failure"
fi

# Print a human-readable result to the terminal
echo "Ping to '$DOMAIN': $RESULT"

# ─── 6. CAPTURE CURRENT DATE AND TIME ─────────────────────────────────────────

# Get the current date and time in YYYY-MM-DD HH:MM:SS format
DATETIME=$(date "+%Y-%m-%d %H:%M:%S")

# ─── 7. WRITE RESULTS TO CSV ──────────────────────────────────────────────────

# Append a new row to the CSV file with all collected information
echo "$NAME,$DOMAIN,$RESULT,$DATETIME" >> "$OUTPUT_FILE"

# Confirm to the user that the result was saved
echo "Result saved to '$OUTPUT_FILE'."

# Exit with code 0 to indicate the script completed successfully
exit 0