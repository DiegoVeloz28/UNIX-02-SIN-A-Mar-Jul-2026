# View user and group identity information
id
# View the current group
id -gn
# Show only the name of the primary group
touch ~/test_grupo_heredado.txt
# Create a file and check which group it inherits
ls -la ~/test_grupo_heredado.txt
# The group is the user's primary group
# View the current group
id -gn
# Display the name of the current user's primary group
echo "Current group: $(id -gn)"
# Print a message displaying the name of the current primary group using command substitution
# Create a file before newgrp
touch ~/antes_de_newgrp.txt
# Create an empty text file in the home directory before switching groups
ls -la ~/antes_de_newgrp.txt
# List all details and permissions for the newly created file to verify its group ownership
apt update
# Update the package index files from their remote repositories
apt upgrade
# Upgrade all currently installed software packages to their latest versions
apt install util-linux-extra
# Install the extra utilities package containing additional system management tools
addgroup desarrolladores
# Create a new system group named "desarrolladores"
newgrp desarrolladores
# Log in to a new group shell, changing the current primary group session
id -gn
# Display the name of the newly active primary group
echo "Nuevo grupo activo: $(id -gn)"
# Print a message verifying the current active primary group name
touch ~/dentro_de_desarrolladores.txt
# Create an empty file within the new group session to check its automatic ownership
ls -la ~/dentro_de_desarrolladores.txt
# List the full details of the file to verify it belongs to the "desarrolladores" group
mkdir -p ~/proyecto_dev/src
# Create a nested project directory structure inside the home folder
ls -la ~/
# List all files and directories in the home folder to check the updated permissions