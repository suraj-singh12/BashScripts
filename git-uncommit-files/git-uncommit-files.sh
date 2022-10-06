#!/usr/bin/env bash

git-uncommit-files() {
   if [ "$1" == "-h" -o "$#" -lt 1 ]; then
      echo "Usage: 'git-uncommit-files file1 file2 ... ' removes files from last commit"
   else
      git reset --soft HEAD~1 # goto previous commit temporarily
      git reset HEAD $@       # remove list of files from staged index (does not delete them)
      git commit -c ORIG_HEAD # commit staged files under original head
   fi
   
}
