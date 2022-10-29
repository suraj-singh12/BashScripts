#!bin/bash
echo "
1.Number of users logged in
2.List of all the users
3.Information regarding the Current user"

read -p "Enter a number " num

case $num in 
	1)echo $(w)
		;;
	2)echo $(who)
                ;;
	3)echo $(id)
		;;
	
esac


