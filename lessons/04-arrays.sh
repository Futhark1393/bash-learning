#!/bin/bash

# Defining an Array
# Elements are space-separated inside parentheses.
my_tools=("Git" "Docker" "Vim" "Nmap")

# Accessing Elements
# Indices start at 0. Curly braces {} are required.
echo "First tool: ${my_tools[0]}"
echo "Second tool: ${my_tools[1]}"

# Accessing All Elements
# '@' expands to all elements in the array.

echo "All tools: ${my_tools[@]}"

# Getting Array Length
# '#' at the beginning gives the count.
echo "Total number of tools: ${#my_tools[@]}"

# Adding a new element
my_tools+=("Burp Suite")
echo "After update: ${my_tools[@]}"
