#!/bin/bash

#for Arch Linux manjaro endeavouros etc
function If_pacman ()
{
    sudo pacman -Sy sysstat --noconfirm
}

#for debian & other debian-based distros 
function If_apt ()
{
    sudo apt update
    sudo apt install sysstat -y
}

#for Void Linux
function If_xbps ()
{
    sudo xbps-install -Syu
    sudo xbps-install sysstat -y
}

#for Redhat, CentOS, Fedora, Oracle Linux etc
function If_dnf ()
{
    sudo dnf check-update 
    sudo yum install sysstat -y
}

type apt 1>/dev/null 2>&1 && If_apt
type xbps 1>/dev/null 2>&1 && If_xbps
type dnf 1>/dev/null 2>&1 && If_dnf
type pacman 1>/dev/null 2>&1 && If_pacman
