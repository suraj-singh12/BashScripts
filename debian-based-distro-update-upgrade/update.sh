#!/bin/bash
sudo apt update        # update the apt cache
sudo apt upgrade -y    # upgrade the system packages
sudo apt autoclean     # uninstall dependencies that are not required
sudo apt autoremove    # remove non-required downloaded files

