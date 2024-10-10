#!/bin/bash

# List all files first
echo "Files:"
find . -maxdepth 1 -type f | sort

# List all directories next
echo -e "\nDirectories:"
find . -maxdepth 1 -type d | sort
