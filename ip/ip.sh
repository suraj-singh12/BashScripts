echo "Installing packages"
sudo apt-get install jq
clear
curl ipinfo.io/json -q | jq


