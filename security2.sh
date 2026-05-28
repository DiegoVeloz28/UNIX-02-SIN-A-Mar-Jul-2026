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