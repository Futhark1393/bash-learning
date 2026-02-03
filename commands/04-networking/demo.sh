#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}--- Networking Commands Demo ---${NC}"

# 1. IP Information
echo -e "\n${CYAN}[1] Checking Local Network Interfaces (ip)...${NC}"
# Show only the lines containing "inet" (IPv4 addresses) to keep it clean
ip a | grep "inet " | grep -v "127.0.0.1"

# 2. Connectivity Check
target="google.com"
echo -e "\n${CYAN}[2] Checking connectivity to $target (ping)...${NC}"
# -c 3 means send only 3 packets
if ping -c 3 $target > /dev/null; then
    echo -e "${GREEN}Success: Connection established.${NC}"
else
    echo -e "${YELLOW}Warning: Could not reach $target. Check internet.${NC}"
fi

# 3. Public IP Check (using curl)
echo -e "\n${CYAN}[3] Finding Public IP Address (curl)...${NC}"
public_ip=$(curl -s ifconfig.me)
echo "Your Public IP is: $public_ip"

# 4. Header Inspection (Reconnaissance)
echo -e "\n${CYAN}[4] HTTP Header Inspection (curl -I)...${NC}"
echo "Fetching headers from example.com to see Server info:"
echo "---------------------------------------------------"
curl -s -I https://example.com | grep -E "HTTP|Server|Date|Content-Type"
echo "---------------------------------------------------"

# 5. Socket Statistics
echo -e "\n${CYAN}[5] Checking Local Listening Ports (ss)...${NC}"
echo "Showing top 5 listening TCP/UDP ports:"
ss -tuln | head -n 6

echo -e "\n${GREEN}--- Demo Complete! ---${NC}"
