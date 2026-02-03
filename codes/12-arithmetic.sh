#!/bin/bash

a=10
b=3

echo "Numbers are: a=$a, b=$b"
echo "-----------------------"

# 1. Basic Arithmetic using double parentheses $(( ))
# Note: Bash only supports integer arithmetic. No decimals natively.

echo "Sum: $((a + b))"
echo "Difference: $((a - b))"
echo "Product: $((a * b))"
echo "Division: $((a / b))" # Returns 3 (integer division)
echo "Modulus (Remainder): $((a % b))" # Returns 1

# 2. Incrementing a variable
# Useful for loops and counters
((a++)) # Increment a by 1
echo "After incrementing, a = $a"

# 3. Complex expressions
result=$(( (a * b) + 5 ))
echo "Complex Expression Result ( (a * b) + 5 ): $result"

