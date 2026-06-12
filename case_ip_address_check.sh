#!/bin/bash
IP_ADDRESS="${1}"
# Assign the first command-line argument passed to the script to the variable IP_ADDRESS
case ${IP_ADDRESS} in
# Begin a case conditional block to match the value of IP_ADDRESS against defined patterns
192.168.*)
# Check if the IP address string starts with "192.168." followed by any trailing characters
echo "Network is 192.168.x.x"
# Print a message indicating the address belongs to a standard private 192.168.0.0/16 network
;;
# Terminate the execution block for the 192.168.* pattern match branch
10.0.*)
# Check if the IP address string starts with "10.0." followed by any trailing characters
echo "Network is 10.0.x.x"
# Print a message indicating the address belongs to a private 10.0.0.0/24 subnet block
;;
# Terminate the execution block for the 10.0.* pattern match branch
*)
# Act as a default fallback wildcard match if the input does not fit any previous patterns
echo "Could not identify the network"
# Print an error notification stating that the network range could not be recognized
;;
# Terminate the execution block for the default fallback branch
esac
# Close the case conditional evaluation block (case spelled backwards)
#192.168.1.1 
#192.168.hola
#10.0.hola
#8.8.8.8