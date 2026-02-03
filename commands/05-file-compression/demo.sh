#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}--- File Compression Demo ---${NC}"

# Setup: Create a temporary directory and some dummy files
echo -e "\n${CYAN}[1] Creating dummy files (10MB each)...${NC}"
mkdir -p compression_lab
cd compression_lab

# Create 3 files filled with zeros (compressible data)
dd if=/dev/zero of=file1.dat bs=1M count=10 2>/dev/null
dd if=/dev/zero of=file2.dat bs=1M count=10 2>/dev/null
dd if=/dev/zero of=file3.dat bs=1M count=10 2>/dev/null

echo "Original Size:"
du -sh .

# 1. TAR (Archive only, no compression)
echo -e "\n${CYAN}[2] Creating standard TAR archive (No compression)...${NC}"
tar -cvf archive.tar *.dat > /dev/null
du -h archive.tar

# 2. TAR + GZIP (Compressed)
echo -e "\n${CYAN}[3] Creating compressed TAR.GZ archive (Standard Linux format)...${NC}"
tar -czvf archive.tar.gz *.dat > /dev/null
du -h archive.tar.gz

# 3. ZIP (If installed)
if command -v zip &> /dev/null; then
    echo -e "\n${CYAN}[4] Creating ZIP archive...${NC}"
    zip -q archive.zip *.dat
    du -h archive.zip
else
    echo -e "\n${CYAN}[4] 'zip' command not found, skipping zip demo.${NC}"
fi

# Cleanup
echo -e "\n${CYAN}[5] Cleanup...${NC}"
cd ..
rm -rf compression_lab

echo -e "${GREEN}--- Demo Complete! ---${NC}"