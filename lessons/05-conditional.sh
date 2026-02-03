#!/bin/bash

# Check if an argument is provided
# $# is the number of arguments (learned in lesson 03)
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

number=$1

# Conditional Logic
# -gt : Greater Than (Büyüktür)
# -eq : Equal (Eşittir)
# -lt : Less Than (Küçüktür)
# IMPORTANT: Spaces inside [ ] are mandatory! [ condition ] works, [condition] fails.

if [ $number -gt 10 ]; then
    echo "The number $number is greater than 10."
elif [ $number -eq 10 ]; then
      echo "The number is exactly 10."
else
      echo "The number $number is less than 10."
fi
	
