#!/bin/bash

# Define valid credentials
declare -A valid_credentials=( ["username1"]="password1" ["username2"]="password2" )

# Prompt user for login information
read -p "Enter username: " username
read -s -p "Enter password: " password

# Check if the entered credentials are valid
if [ "${valid_credentials[$username]}" == "$password" ]; then
  echo "Authentication successful."
else
  echo "Authentication failed."
fi
