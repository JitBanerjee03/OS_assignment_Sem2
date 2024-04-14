#!/bin/bash

# Prompting the user to enter the length of the rectangle
read -p "Enter the length of the rectangle: " length

# Prompting the user to enter the breadth of the rectangle
read -p "Enter the breadth of the rectangle: " breadth

# Calculating the area of the rectangle
area=$(echo "$length * $breadth" | bc)

# Calculating the perimeter of the rectangle
perimeter=$(echo "2 * ( $length + $breadth )" | bc)

# Printing the area and perimeter of the rectangle
echo "The area of the rectangle is $area"
echo "The perimeter of the rectangle is $perimeter"
