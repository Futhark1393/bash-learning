#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}--- Linux Basic Commands Demo ---${NC}"

# 1. mkdir & cd
echo -e "\n${CYAN}[1] Creating a sandbox directory (mkdir) and entering it (cd)...${NC}"
mkdir -p sandbox_demo
cd sandbox_demo
echo "Current Directory (pwd): $(pwd)"

# 2. touch & echo
echo -e "\n${CYAN}[2] Creating files (touch) and writing content (echo)...${NC}"
touch empty_file.txt
echo "Hello from Fedora!" > hello.txt
echo "This is a log file." > app.log

# 3. ls
echo -e "\n${CYAN}[3] Listing files with details (ls -l)...${NC}"
ls -l

# 4. cp
echo -e "\n${CYAN}[4] Copying 'hello.txt' to 'hello_backup.txt' (cp)...${NC}"
cp hello.txt hello_backup.txt
ls -l hello_backup.txt

# 5. mv
echo -e "\n${CYAN}[5] Renaming 'empty_file.txt' to 'renamed_file.txt' (mv)...${NC}"
mv empty_file.txt renamed_file.txt
ls

# 6. cat
echo -e "\n${CYAN}[6] Reading content of 'hello.txt' (cat)...${NC}"
cat hello.txt

# 7. Cleaning up (rm)
echo -e "\n${CYAN}[7] Cleaning up: Deleting the sandbox directory...${NC}"
cd ..
rm -rv sandbox_demo

echo -e "\n${GREEN}--- Demo Complete! ---${NC}"