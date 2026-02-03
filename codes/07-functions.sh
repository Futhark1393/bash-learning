#!/bin/bash

# 1. Defining a basic function
print_seperator() {
	echo "------------------------------"
}

# 2. Function with parameters
# $1 inside a function refers to the function's first argument,
# NOT the script's first argument.
greet_user(){
	local name=$1 # Define a local variable
	echo "Hello, $name! Welcome to Bash scripting."
}

get_system_info(){
	local kernel=$(uname -r)
	echo "Kernel: $kernel"
}

# --- Main Script Execution ---

print_seperator
greet_user "Futhark"
print_seperator

# Capturing the output of a function into a variable
sys_info=$(get_system_info)
echo "System Info received: $sys_info"
