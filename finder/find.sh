#!/bin/bash

# Check if both depth and filename are provided by the user
if [ $# -ne 2 ]; then
  echo "Usage: $0 <depth> <partial_filename>"
  exit 1
fi

DEPTH=$1
PARTIAL_FILENAME=$2

# find all occurrences of this file in current directory till depth level (as specified by user)
find . -maxdepth "$DEPTH" -type f -name "*$PARTIAL_FILENAME*" 2>/dev/null
