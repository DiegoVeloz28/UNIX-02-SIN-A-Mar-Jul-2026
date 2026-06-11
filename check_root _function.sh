#!/bin/bash
check_if_root(){
# Declare a custom shell function named check_if_root to evaluate privileges
if [[ "${EUID}" -eq 0 ]]; then
# Test if the Effective User ID variable equals zero, which indicates the root account
return 0
# Return a successful status code of 0 to indicate the user is root
else
# Execute the fallback block if the Effective User ID does not equal zero
return 1
# Return a failure status code of 1 to indicate the user is a standard account
fi
# Close the conditional evaluation block within the custom function
}
# Close the check_if_root function definition block
if check_if_root; then
# Call the function and evaluate its return status code in an if statement
echo "User is root!"
# Print a confirmation message if the function returns success (status code 0)
else
# Execute the alternative block if the function returns a failure status code
echo "User is not root!"
# Print a message stating the current session lacks administrative root privileges
fi
# Close the main privilege check execution block