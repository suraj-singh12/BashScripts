#!/bin/sh
echo "Hello There!!!"
echo "Excited to set up your new server! "

echo "Updating packages!"
sudo apt update

echo "Installing nginx!"
sudo apt install nginx -y

echo "Adjusting your firewall rules! \n So that no one can get into your system easily"
sudo apt-get install ufw
sudo ufw enable -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

echo "Checking your web server"
sudo systemctl status nginx

echo "Installing Git!"
sudo apt install git -y

echo "Installing Node"
sudo apt install nodejs -y
node -v
sudo apt install npm -y
sudo npm install -g n
sudo n stable
npm -v

echo "Installing Yarn!"
npm install --global yarn
yarn --version

echo "Setup Done!"

echo"Restart to start with the latest stable release of Node!"
