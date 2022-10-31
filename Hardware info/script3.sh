
#!bin/bash
echo "
1.Hard disk information
2.CPU information
3.Memory information
"

read -p "Enter a number" num

case $num in
        1)echo $(lsblk)
                ;;
        2)echo $(lscpu)
                ;;
        3)echo $(free)
                ;;
esac
