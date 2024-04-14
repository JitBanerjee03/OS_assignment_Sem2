#!/bin/bash

# Taking input for the five-digit number from the user
read -p "Enter a five-digit number: " number

# Checking if the input has exactly five digits
if [[ $number =~ ^[0-9]{5}$ ]]; then
    # Extracting each digit from the number and calculating the sum
    sum=0
    for (( i=0; i<${#number}; i++ )); do
        digit=${number:$i:1}
        sum=$((sum + digit))
    done

    # Displaying the sum of digits
    echo "Sum of digits: $sum"
else
    echo "Error: Please enter a valid five-digit number."
fi
