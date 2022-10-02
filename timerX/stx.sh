#!/bin/bash
total=$1
echo -e '\n'
for ((i=total-1; i>=0; i--)); do sleep 1; printf "\e[1;32m Time remaining $i secs \e[0m\r"; done
echo -e "\a\n"

# use: ./stx.sh time_in_seconds
# e.g: ./stx.sh 10
