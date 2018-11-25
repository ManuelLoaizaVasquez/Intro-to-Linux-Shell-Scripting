#!/bin/bash

# Determine if the user executing this script is the root user or not.

# Display the UID
echo "Your UID is ${UID}."
# bash has some builtin variables
# UID contains the used ID of the person executing the script
# root is always zero

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
	echo "You are root."
	echo "Installing software."
	# The commands to install software.
else
	echo "You are not root."
	echo "You don't have permissions to install the software."
fi
