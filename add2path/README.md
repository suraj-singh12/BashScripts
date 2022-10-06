# add2path
This is a bash script that will add your current directory to $PATH through ~/.bash_rc making the binaries and shell scripts accessible from any directory in the terminal.  
It is a handy tool that you can run in any directory to add them to the $PATH variable and it will persists through shutdown and startups.  
Use this tool to make your scripts accessible from any location in the terminal, without having to type their absolute or relative path.

## INSTALLATION
Run this in the terminal one after the another
```
chmod +x add2path
./add2path

```
- The first command makes the shell script executable.  
- The second command adds the current path to the $PATH and saves it in the ~/.bashrc file, allowing it to run from anywhere in the terminal.  

## Usage
```
add2path
```

Run this command in the directory that you want to add in the $PATH. Using the script inside any directory makes the binaries and shell scripts of that directory accessible anywhere from the terminal.

### Example
```
user@ubuntu : ~/BashScripts/ip/ $ ls
ip.sh readme.txt
user@ubuntu : ~/BashScripts/ip/ $ add2path
[add2path]

adding current directory [/home/user/BashScripts/ip] to path in ~/.bashrc 

[FINISHED]

```
Using this tool, the ip directroy has been added to $PATH, now we can run ip.sh from anywhere in the terminal and we don't have to use the absolute or relative path to run the ip.sh script.

## Removing added PATHS
To remove the added paths, edit .bashrc file located in at the home directory .ie ~/.bashrc and delete the lines at the bottom of the file.  
```
export PATH="/home/user/BashScripts/add2path:$PATH"
export PATH="/home/user/BashScripts/ip:$PATH"

```

Removing those two lines from the .bashrc will remove add2path and ip from the $PATH variable.  
RUN ```source .bashrc``` to update the .bashrc file
