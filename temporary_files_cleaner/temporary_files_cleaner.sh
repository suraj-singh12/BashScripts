#!/bin/bash

sudo apt-get autoremove -y
sudo apt-get autoclean
sudo apt-get clean
sudo rm -rf ~/.cache/thumbnails/*
echo ""
read -p "This will also remove all system log files older than 3 days. Do you wish to proceed?(y/n) : " CHOICE
echo ""
if [[ $CHOICE == 'y' ]]
then
	sudo journalctl --vacuum-time=3d
fi
