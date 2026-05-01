ls 
# List files and directories in the current location
LS 
# (Note: This will likely return 'command not found' as Linux is case-sensitive)
ls Documents
# List the contents of the Documents folder
aptitude moo  
# A small Easter Egg from the package manager
ls -l
# Use long listing format to show permissions and details
ls -l -r
# Long listing format in reverse alphabetical order
ls -rl
# Same as above: reverse long listing (combined flags)
aptitude -v moo
# More verbose version of the package manager Easter Egg
aptitude -vv moo
# Even more verbose Easter Egg response
aptitude -vvv moo
# The highest level of verbosity for the aptitude Easter Egg
pwd 
# Print the absolute path of the current working directory
cd Documents 
# Change directory to the Documents folder
cd / 
# Change to the root directory of the system
cd /home/sysadmin
# Change to the specific home directory of the 'sysadmin' user
cd Documents 
# Move back into the Documents folder
cd School/Art
# Change to a sub-directory using a relative path
cd ..  
# Move up one level to the parent directory
cd ~
# Change directory to the current user's home folder
ls -l /var/log/
# Detailed list of system log files
ls -lt /var/log
# List logs sorted by modification time (newest first)
ls -l -S /var/log 
# List logs sorted by file size (largest first)
ls -lSr /var/log
# List logs sorted by size in reverse order (smallest first)
ls -r /var/log
# List the log directory in reverse alphabetical order
su -
# Switch to the superuser (root) with a fresh login environment
exit
# Terminate the current session or exit the root shell
sl
# Run the 'Steam Locomotive' animation (if installed)
sudo sl 
# Run the locomotive animation with administrative privileges
cd ~/Documents
# Move to the Documents folder inside the home directory
ls -l hello.sh 
# Check the details and permissions of the 'hello.sh' file
./hello.sh   
# Execute the script named 'hello.sh' from the current directory
chmod u+x hello.sh
# Grant execute permission to the owner of 'hello.sh'
sudo chown root hello.sh 
# Change the owner of the script to the root user


# Execute the script with administrative privileges
cat animals.txt  
# Display the entire content of 'animals.txt'
cat alpha.txt
# Display the entire content of 'alpha.txt'
head alpha.txt  
# Show the first 10 lines of 'alpha.txt'
tail alpha.txt    
# Show the last 10 lines of 'alpha.txt'
head -n 5 alpha.txt
# Show exactly the first 5 lines of the file
tail -n 5 alpha.txt 
# Show exactly the last 5 lines of the file
cp /etc/passwd .
# Copy the system password file to the current directory
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Create a 50MB dummy file filled with zeros
mv people.csv Work
# Move the CSV file into the 'Work' directory
mv numbers.txt letters.txt alpha.txt School
# Move multiple files into the 'School' directory at once
mv animals.txt zoo.txt  
# Rename 'animals.txt' to 'zoo.txt'
rm linux.txt
# Delete the file 'linux.txt'
ls linux.txt
# Check if the file still exists (should return an error)
rm Work
# Attempt to remove the 'Work' directory (fails if not empty)
rm -r Work
# Recursively remove the 'Work' directory and all its contents
ls Work   
# Check if the directory still exists
cp /etc/passwd .
# Copy the password file again to the current folder
grep sysadmin passwd
# Search for the string 'sysadmin' in the 'passwd' file
grep 'root' passwd
# Search for the string 'root' in the 'passwd' file
grep '^root' /etc/passwd
# Find lines that begin with 'root' in the system password file
cat alpha-first.txt
# Show the content of the 'alpha-first.txt' file
grep 'r$' alpha-first.txt
# Find lines that end with the letter 'r'
cat red.txt
# Display the content of 'red.txt'
grep 'r..f' red.txt
# Find 4-letter patterns starting with 'r' and ending with 'f'
grep 'r..d' red.txt
# Find 4-letter patterns starting with 'r' and ending with 'd'
grep '....' red.txt
# Find lines containing at least four characters
grep 'r..t' /etc/passwd
# Search for 'r' followed by two characters and a 't' in passwd
cat profile.txt
# Display the content of 'profile.txt'
grep '[0-9]' profile.txt
# Find any lines that contain at least one digit
grep '[^0-9]' profile.txt
# Find lines containing at least one non-digit character
grep '[.]' profile.txt
# Search for lines containing a literal period/dot
grep 're*d' red.txt
# Search for 'r', followed by zero or more 'e's, then 'd'
grep 'r[oe]*d' red.txt
# Search for 'r', followed by any number of 'o' or 'e', then 'd'
grep 'z*' red.txt
# Matches every line because 'z*' means zero or more 'z's
grep 'e*' red.txt
# Matches every line because 'e*' means zero or more 'e's
grep 'ee*' red.txt
# Search for at least one 'e' (an 'e' followed by zero or more 'e's)
grep 'red'
# Wait for user input to search for the string 'red'
shutdown now 
# Power off the system immediately
date 
# Show the current system date and time
shutdown 01:51  
# Schedule a system shutdown for exactly 01:51 AM
shutdown +1 "Goodbye World!" 
# Schedule a shutdown in 1 minute with a custom message
ifconfig
# Display network interface and IP configuration
ping -c 4 192.168.1.2 
# Send 4 ICMP echo requests to the specified IP address
ping -c 4 192.168.1.3
# Send 4 ICMP echo requests to another IP address
ps 
# Show processes running in the current terminal session
ps -e
# List every process currently running on the entire system
ps -ef
# List all processes with full details (UID, PID, etc.)
sudo apt-get update
# Synchronize the package index files from their sources
apt-cache search cow  
# Search for software packages related to 'cow'
sudo apt-get install cowsay 
# Install the 'cowsay' utility on the system
cowsay 'NDG Linux Unhatched' 
# Run the cow drawing with a specific message
sudo apt-get upgrade 
# Install the newest versions of all currently installed packages
sudo apt-get purge cowsay 
# Remove 'cowsay' and all its configuration files
passwd 
# Change the password for the current user
passwd -S sysadmin 
# View the password status for the user 'sysadmin'
su root
# Switch to the root user account
passwd sysadmin 
# Change the password for the 'sysadmin' user (as root)
cat food.txt
# Display the content of 'food.txt'
cat food.txt > newfile1.txt
# Redirect content of 'food.txt' to 'newfile1.txt' (overwrite)
cat newfile1.txt
# Verify the content of the newly created file
echo "Hello"
# Print the word 'Hello' to the terminal
echo "I like food." > newfile1.txt
# Overwrite 'newfile1.txt' with the string "I like food."
echo "This food is good." >> newfile1.txt
# Append the string "This food is good." to the end of the file
vi newfile.txt
# Open the file 'newfile.txt' using the Vim text editor