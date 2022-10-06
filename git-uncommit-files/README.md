# git-uncommit-files

This function allows the user to uncommit files from the last commit. It is assumed that the user has not pushed the repository to remote.

If all the files in the commit are selected, the commit itself will also be removed. If only a proper subset of files are selected, the commit will remain with the unselected files.

## Add the function to your environment
 1. Execute permissions `chmod +x git-uncommit-files.sh`
 2. Source the file `. git-uncommit-files.sh`.
 3. Optionally source in `.bashrc`: `echo . $(pwd)/git-uncommit-files.sh >> ~/.bashrc` 

## Example use
`git-uncommit-files file1 file2 ...` will remove `file1` and `file2` from last commit. The files will not be deleted.