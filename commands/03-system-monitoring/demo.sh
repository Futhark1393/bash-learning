#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}--- System Monitoring Demo ---${NC}"

# 1. System Info
echo -e "\n${CYAN}[1] System Info (uname & uptime)...${NC}"
echo "Kernel: $(uname -r)"
uptime -p

# 2. Disk & Memory
echo -e "\n${CYAN}[2] Checking Resources (df & free)...${NC}"
echo "--- Disk Space (Root) ---"
df -h / | awk 'NR==2 {print "Used: " $5 " | Available: " $4}'
echo "--- Memory ---"
free -h | grep Mem | awk '{print "Total: " $2 " | Used: " $3}'

# 3. Process Management Simulation
echo -e "\n${CYAN}[3] Process Management Simulation...${NC}"

# Start a dummy process in background (&)
sleep 500 & 
dummy_pid=$! # Get the PID of the last background command

echo "Started a dummy process (sleep 500) with PID: $dummy_pid"

# Verify it exists using ps
echo "Searching for process in 'ps' list..."
ps -ef | grep "$dummy_pid" | grep -v grep

# Kill the process
echo -e "${RED}Killing process $dummy_pid...${NC}"
kill $dummy_pid

# Check if it's gone
sleep 1 # Wait a bit
if ! ps -p $dummy_pid > /dev/null; then
    echo -e "${GREEN}Success: Process $dummy_pid is terminated.${NC}"
else
    echo -e "${RED}Failed: Process is still running.${NC}"
fi

echo -e "\n${GREEN}--- Demo Complete! ---${NC}"
