#!/bin/bash
# Specify that the script should be executed using the Bash shell
bash --version
# Display the version information and license details of the installed Bash shell
env
# List all current environment variables exported to the shell session
echo ${SHEL}
# Print the value of the SHEL variable (Note: likely a typo for the standard ${SHELL})
echo ${RANDOM}
# Generate and display a random integer between 0 and 32767
echo ${UID}
# Print the User ID number of the current logged-in user
echo ${OSTYPE}
# Display the operating system type detected by Bash (e.g., linux-gnu or darwin)
man ls
# Open the complete reference manual page for the 'ls' command
ps -e -f
# List every running process on the system using the full-format listing
ps -ef
# Equivalent to 'ps -e -f'—displays a detailed snapshot of all active processes
df --human-readable
# Show available disk space on all mounted filesystems in easy-to-read units (GB, MB)
bash -r blackhatbash1.sh
# Execute a script in restricted shell mode for enhanced security testing
cd ~
# Change the current working directory to the user's home directory
chmod u+x helloworld.sh
# Grant execute permission specifically to the owner of the 'helloworld.sh' file
./helloworld.sh
# Execute the 'helloworld.sh' script from the current directory
bash -n blackhatbash.sh
# Read the script and check it for syntax errors without actually running it
bash -x blackhatbash.sh
# Run the script in debug mode, printing each command as it gets executed
touch blackhatbash2.sh
# Create a new, empty shell script file named 'blackhatbash2.sh'
mkdir mydirectory
# Create a new directory named 'mydirectory' in the current location
touch mydirectory/myfile
# Create an empty file named 'myfile' inside 'mydirectory'
ls -l mydirectory
# List the contents and permissions of 'mydirectory' in long format
bash blackhatbash2.sh
# Execute the newly created 'blackhatbash2.sh' script using the Bash interpreter