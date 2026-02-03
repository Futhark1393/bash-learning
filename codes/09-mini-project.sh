#!/bin/bash

# --- 1. Variables & Parameters (Lesson 02 & 03) ---
# Use the first argument as the target file.
# Syntax ${1:-default} means: If $1 is null, use "server.log".
target_file=${1:-"server.log"}

# --- 2. Arrays (Lesson 04) ---
# Keywords we want to search for in the log file (Security context).
suspicious_keywords=("Failed" "Error" "Denied" "Root")

# --- 3. Functions (Lesson 08) ---
# A helper function to print messages with a timestamp.
print_log() {
	local message=$1
	echo "[$(date +'%H:%M:%S')] $message"
}

# --- 4. File Tests & Logic (Lesson 05 & 07) ---
print_log "Checking for file: $target_file..."

if [ ! -e "$target_file" ]; then
	print_log "Warning: File not found."
	print_log "GEnerating a dummy log file for testing..."

	# Creating a dummy file with some suspicious entries
	echo "2024-02-01 10:00:00 System started" > "$target_file"
	echo "2024-02-01 10:05:00 Password Failed for user admin" >> "$target_file"
	echo "2024-02-01 10:10:00 Access Denied on /etc/shadow" >> "$target_file"
	echo "2024-02-01 10:15:00 Service running normally" >> "$target_file"
else
	print_log "File found. Proceeding with analysis..."
fi

echo "----------------------------------------"

# --- 5. Loops & Processing (Lesson 06) ---
# Loop through our keyword array
for keyword in "${suspicious_keywords[@]}"; do
	
	# 'grep -c' counts the occurrences of the string in the file
	count=$(grep -c "$keyword" "$target_file")

	if [ $count -gt 0]; then
		echo "ALERT: Found $count occurrences of '$keyword'!"
	else
		echo "SAFE: No traces of '$keyword' found."
	fi
done

echo "----------------------------------------"
print_log "Analysis complete. Please review the results above."