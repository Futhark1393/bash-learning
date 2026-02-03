#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}--- Text Processing Demo ---${NC}"

# Create a dummy data file (CSV format: ID,Name,Role,Status)
echo -e "\n${CYAN}[1] Creating dummy data file (users.csv)...${NC}"
echo "101,Kemal,Admin,Active" > users.csv
echo "102,Ahmet,Developer,Active" >> users.csv
echo "103,Ayse,Manager,Inactive" >> users.csv
echo "104,Mehmet,Intern,Active" >> users.csv
echo "105,Fatma,Developer,Inactive" >> users.csv

cat users.csv
echo "-----------------------------------"

# 1. GREP: Find Active users
echo -e "\n${CYAN}[2] GREP: Finding 'Active' users...${NC}"
grep "Active" users.csv

# 2. CUT: Extracting Names only
# -d',' means delimiter is comma. -f2 means extract field 2.
echo -e "\n${CYAN}[3] CUT: Extracting Names (2nd column)...${NC}"
cut -d',' -f2 users.csv

# 3. SED: Replacing Text
# We will replace 'Intern' with 'Junior Dev'
echo -e "\n${CYAN}[4] SED: Replacing 'Intern' with 'Junior Dev'...${NC}"
sed 's/Intern/Junior Dev/g' users.csv

# 4. AWK: Advanced Formatting
# Print: "User: [Name] is [Role]"
echo -e "\n${CYAN}[5] AWK: Reformatting output...${NC}"
awk -F',' '{print "User: " $2 " is " $3}' users.csv

# 5. SORT: Sorting by Name
echo -e "\n${CYAN}[6] SORT: Sorting lines alphabetically...${NC}"
sort users.csv

# Cleanup
rm users.csv
echo -e "\n${GREEN}--- Demo Complete! ---${NC}"