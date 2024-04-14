#!/bin/bash

# Taking input for the five-digit number from the user
read -p "Enter a five-digit number: " number

# Checking if the input has exactly five digits
if [[ $number =~ ^[0-9]{5}$ ]]; then
    # Reversing the number
    reverse=""
    for (( i=${#number}-1; i>=0; i-- )); do
        reverse="$reverse${number:i:1}"
    done

    # Displaying the reverse number
    echo "Reverse number: $reverse"
else
    echo "Error: Please enter a valid five-digit number."
fi
