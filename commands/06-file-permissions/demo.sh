#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}--- File Permissions Demo ---${NC}"

# 1. Setup
echo -e "\n${CYAN}[1] Creating a test file...${NC}"
echo "Top Secret Data" > secret.txt
ls -l secret.txt

# 2. Make it Read-Only (Remove Write)
echo -e "\n${CYAN}[2] Removing WRITE permission (chmod -w)...${NC}"
chmod -w secret.txt
ls -l secret.txt

# 3. Try to Write (Should Fail)
echo -e "\n${CYAN}[3] Attempting to write to the read-only file...${NC}"
if echo "New Data" >> secret.txt 2>/dev/null; then
    echo -e "${RED}FAILED: Write succeeded (It shouldn't have!)${NC}"
else
    echo -e "${GREEN}SUCCESS: Permission Denied! The file is protected.${NC}"
fi

# 4. Make Executable
echo -e "\n${CYAN}[4] Adding EXECUTE permission (chmod +x)...${NC}"
# Create a simple script
echo "#!/bin/bash" > hello.sh
echo "echo 'Hello!'" >> hello.sh

# Try running without permission
echo "Running without +x:"
./hello.sh 2>/dev/null || echo -e "${RED}Access Denied (Expected)${NC}"

# Add permission and run
chmod +x hello.sh
echo "Running with +x:"
./hello.sh

# Cleanup
rm secret.txt hello.sh
echo -e "\n${GREEN}--- Demo Complete! ---${NC}"