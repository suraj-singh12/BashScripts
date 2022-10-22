#!/bin/bash

sudo airmon-ng check kill &&
echo NetworkManager service is killed &&
sudo ip link set wlan0 down && 
sudo iw dev wlan0 set type monitor && 
echo You are now in monitor mode 
