#!/bin/bash

text="Welcome to the Fedora Linux Security Lab"

echo "Original Text: $text"
echo "------------------------------"

# --- 1. String Length ---
# usage: ${#variable}
echo "Length of the text: ${#text} characters"

# --- 2. Substring Extraction ---
# usage: ${variable:start_index:length}
# get the first 7 characters
echo "First 7 characters: ${text:0:7}"
# get characters from index 15
echo "Characters from index 15: ${text:15}"

# --- 3. Search and Replace ---
# usage: ${variable/find/replace} (first match only)
# usage: ${variable//find/replace} (all matches)
echo "Replace 'Linux' with 'System': ${text/Linux/System}"

# --- 4. Case Conversion ---
# ^^ to uppercase, ,, to lowercase
echo "Uppercase: ${text^^}"
echo "Lowercase: ${text,,}"

