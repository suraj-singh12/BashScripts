#!/bin/bash

# Create the "files" directory if it doesn't exist
mkdir -p files

# Move all files in the current directory to the "files" directory
find . -maxdepth 1 -type f -exec mv {} files/ \;

echo "All files have been moved to the 'files' directory."
