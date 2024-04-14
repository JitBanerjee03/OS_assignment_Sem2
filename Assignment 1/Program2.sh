#!/bin/bash

# Taking input for basic salary from the user
read -p "Enter the basic salary: " basic_salary

# Calculating tax (assuming tax rate is 10%)
tax=$(echo "scale=2; $basic_salary * 0.1" | bc)

# Calculating net salary
net_salary=$(echo "$basic_salary - $tax" | bc)

# Displaying salary slip
echo "Salary Slip"
echo "Basic Salary: $basic_salary"
echo "Tax (10%): $tax"
echo "Net Salary: $net_salary"
