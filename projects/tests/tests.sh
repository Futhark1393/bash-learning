#!/bin/bash

filename="test_file.txt"
count=5

# 1. File Test (-e)
# Checks if the file exists in the current directory.
if [ -e "$filename" ]; then
    echo "Fİle '$filename' exists."
else
    echo "File '$filename' does not exist. Creating it now..."
    touch "$filename"
fi

# 2. Numeric Comparison (-le)
# Checks if count is Less than or Equal to 10.
if [ $count -le 10 ]; then
	echo "The number $count is less than or equal to 10."
fi
