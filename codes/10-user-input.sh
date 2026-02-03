#!/bin/bash

# 1. Basic Input
echo "Enter your username: "
read username
echo "Hello, $username!"

# 2. Input with Prompt (-p) 
# The -p flag lets you print a message on the same line.
read -p "Which domain are you studying (e.g., Cyber, Web)? " domain
echo "Interesting! $domain is a fascinating field."

# 3. Secret Input (-s)
# The -s flag allows you to read input silently (useful for passwords).
read -sp "Enter your sudo password (input hidden): " password
echo -e "\nPassword captured securely. Length: ${#password} characters."

# 4. Input with Timeout (-t)
# The script waits for 5 seconds. If no input is given, it proceeds.
if read -t 5; then
    echo "Confirmed! Executing..."
else
    echo -e "\nTimeout! No input received. Exiting..."
fi
