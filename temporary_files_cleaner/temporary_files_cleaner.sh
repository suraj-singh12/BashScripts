#!/bin/bash

sudo apt-get autoremove -y
sudo apt-get autoclean
sudo apt-get clean
sudo journalctl --vacuum-time=3d
sudo rm -rf ~/.cache/thumbnails/*
