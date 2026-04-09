git branch 
# helps you to know in wich branch you ar working on 
git checkout 
# Makes you swich between branches 
mkdir proyecto
# Create a folder which name is proyecto 
cd /proyecto
# You move into the folders to te folder proyecto 
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto
# Makes you go dirrecly to te folder you want,(If you know the name of the folders to move use it)
cd
# Just 'cd' also takes you back Home
cd ~
# Goes straight back to the Home folder
cd $HOME
# Another way to return to the Home directory
cd $PATH
# This one usually fails because $PATH isn't a single directory
ls -lai
# Shows all files in a list with their info and index numbers
man ls
# Opens the manual for the 'ls' command
ls -a
# Shows everything, including hidden files
cd ..
# Goes up one level to the parent folder
.
# This represents the folder you are in right now
..
# This represents the folder right above this one
total 8
1572972 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:19 .
1572874 drwxrwxrwx+ 5 codespace root      4096 Apr  9 12:19 ..
#1572972 (Inode Number): The unique ID of the file or folder in the system (like an ID card).
#drwxrwxrwx+ (Permissions): * d: It's a directory (folder).
#rwx: Permissions for Read, Write, and Execute.
#+: Additional security settings are active.
#2 (Links): The number of hard links pointing to this item.
#codespace codespace (Owner & Group): The first one is the User who owns it, and the second one is the Group it belongs to.
#4096 (Size): The size of the directory in bytes.
#Apr 9 12:19 (Timestamp): The last time the folder was modified.
#. and .. (Names): * . refers to the current folder.
#.. refers to the parent (previous) folder.
stat .
# Shows detailed info about the current folder
 Device: 7,4  Inode: 1572972  Links: 2
# This shows the hardware ID, the unique system ID, and how many links point here
whoami
# Shows the username of the person logged in
ls -lt
# Lists files and sorts them by the time they were changed