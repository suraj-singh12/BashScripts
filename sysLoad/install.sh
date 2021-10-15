#!/bin/bash

chmod +x dependency.sh
./dependency.sh

chmod +x script.sh
chmod +x script2.sh

cp -n ~/.bashrc ~/.bashrc.bkup
readlink -f script2.sh >> ~/.bashrc

echo -e "\e[1;36mInstall success\e[0m"
