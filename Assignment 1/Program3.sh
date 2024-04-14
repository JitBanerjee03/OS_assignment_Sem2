#!/bin/bash

# Prompt the user to enter a five-digit number
echo "Enter a five-digit number:"
read number

# Check if the input has exactly five digits
if ! [[ $number =~ ^[0-9]{5}$ ]]; then
    echo "Error: Input must be a five-digit number."
    exit 1
fi

# Calculate the sum of the digits
sum=0
for (( i=0; i<${#number}; i++ )); do
    digit=${number:$i:1}
    sum=$((sum + digit))
done

# Print the sum of the digits
echo "Sum of digits: $sum"