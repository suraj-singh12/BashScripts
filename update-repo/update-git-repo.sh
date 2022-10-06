#!/bin/bash 

# pull the latest code from origin
/usr/bin/git fetch --all

# make sure on the master branch
/usr/bin/git checkout master 

# pull the latest version into the current version
/usr/bin/git pull origin master