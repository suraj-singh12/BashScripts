#!bin/bash
echo "
1.Home directory 
2.OS name & version
3.Current working directory"

read -p "Enter a number" num
case $num in 
	1)echo $(cd;pwd)
		;;
	2)echo $(cat /etc/os-release)
		;;
	3)echo $(pwd)
		;;
	
esac

