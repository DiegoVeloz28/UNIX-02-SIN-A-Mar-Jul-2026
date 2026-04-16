ls -a
# List all files, including hidden ones
ls --all
# List all entries including those starting with a dot
ls -l
# Use a long listing format to show permissions and details
ls -l -a -h
# List all details in a human-readable format
ls -lah
# Display all files in a detailed, human-readable list
mkdir -- -rf
# Create a directory literally named "-rf"
rmdir -- -rf
# Remove the empty directory named "-rf"
ls --help
# Display the built-in help manual for the 'ls' command
man ls
# Open the full manual page for the 'ls' command to see all options
git clone
# Copy a remote repository from GitHub to your local machine
man git-clone
# Open the manual page for the git-clone command to see usage detail
chmod +x script.sh
# Grant execute permission to everyone for the file 'script.sh'
chmod u+x script.sh
# Grant execute permission only to the owner (user) of the file
chmod o-r secreto.txt
# Remove read permission from 'others' for the file 'secreto.txt'
chmod u+rw,go-rwx privado
# Give the owner read/write access and revoke all permissions from everyone else
sudo chmod +x init
# Use administrative privileges to grant execute permission to the 'init' file
sudo echo "hola" > /ect/archivo_protegido
#The system attempts to open the file with your normal user permissions.
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
# Write text to a system-protected file using sudo and the tee command
echo "hola" | sudo tee /etc/archivo_protegido
# Write text to a system-protected file and display the output in the terminal