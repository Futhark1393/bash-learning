#!/bin/bash

num1=10.5
num2=3.2

echo "Numbers: $num1 and $num2"
echo "------------------------"

# 1. Addition with bc
# We pipe the equation into the 'bc' command
sum=$(echo "$num1 + $num2" | bc)
echo "Sum: $sum"

# 2. Multiplication
product=$(echo "$num1 * $num2" | bc)
echo "Product: $product"

# 3. Division with Precision (Scale)
# 'scale=2' tells bc to keep 2 decimal places.
# Without scale, bc typically truncates division results.
result=$(echo "scale=2; 20 / 3" | bc)
echo "Division (20/3): $result"

# 4. Comparing Decimals
# bc returns 1 (True) or 0 (False) for comparisons.
# We check if the result is 1.
if [ $(echo "$num1 > $num2" | bc) -eq 1 ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is NOT greater than $num2"
fi