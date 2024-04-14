#!/bin/bash

# Taking input for the user login name
read -p "Enter the user login name: " username

# Searching for the user in /etc/passwd and printing details
user_info=$(grep "^$username:" /etc/passwd)

if [ -n "$user_info" ]; then
    echo "User Information for $username:"
    echo "Username: $(echo $user_info | cut -d: -f1)"
    echo "User ID: $(echo $user_info | cut -d: -f3)"
    echo "Group ID: $(echo $user_info | cut -d: -f4)"
    echo "User ID Info: $(echo $user_info | cut -d: -f5)"
    echo "Home Directory: $(echo $user_info | cut -d: -f6)"
    echo "Login Shell: $(echo $user_info | cut -d: -f7)"
else
    echo "User '$username' not found."
fi
