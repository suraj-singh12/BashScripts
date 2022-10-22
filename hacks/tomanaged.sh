#!/bin/bash
sudo ifconfig wlan0 down && 
echo "wlan0 adapter is down" &&
sudo iwconfig wlan0 mode managed &&
echo "managed mode set successfully successfully" &&
sudo ifconfig wlan0 up &&
echo "wlan0 adapter is up" && 
sudo service NetworkManager restart &&
echo "restarting service NetworkManager" && 
echo "You are now in managed mode" 

