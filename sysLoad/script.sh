#!/bin/bash

echo ""
# echo -e "\e[1;36m-------------------------------------------------------------------------------------- \e[0m"
echo -e "                                      \e[1;33mHi" "$USER \e[0m"
total=$(echo $(ps -e | wc -l))
sleeping=$(echo $(ps -eo s | grep S | wc -l))
running=$(echo $((total - sleeping)))

echo ""
echo -e "\e[1;36mTotal Active Tasks   :" "$total \e[0m"
echo -e "\e[1;36mTotal Running Tasks  :" "$running \e[0m"
echo -e "\e[1;36mTotal Sleeping Tasks :" "$sleeping \e[0m"
echo ""

echo -e "\e[1;36mCPU usage details : \e[0m"
echo -e "\e[1;34m"
iostat -c | grep  -A 1 avg-cpu
echo -e "\e[0m"

echo -e "\e[1;36mMemory usage details : \e[0m"
echo -e "\e[1;34m"
free -h | grep -B 1 Mem
echo -e "\e[0m"

# echo -e "\e[1;36m--------------------------------------------------------------------------------------- \e[0m"
