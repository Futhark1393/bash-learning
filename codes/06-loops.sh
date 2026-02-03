#!/bin/bash

# 1. For Loop: Iterating over a list
echo "--- For Loop: Distros ---"
for distro in Ubuntu Fedora Debian Arch; do
    echo "Checking distro: $distro"
done

# 2. C-Style For Loop: Numeric range
# Useful for counting or indexed operations
echo -e "\n--- C-Style For Loop ---"
for((i=1; i<=3; i++)); do
   echo "Number: $i"
done

# 3. While Loop: Runs as long as condition is true
echo -e "\n--- While Loop ---"
count=1
while [ $count -le 3 ]; do
    echo "Count is at: $count"
    ((count++)) #Increment the counter
done
