while :
echo '\n----------------------------------\n'
do date
awk '{printf "1 minute load: %.2f\n", $1; printf "5 minute load: %.2f\n", $2; printf "15 minute load: %.2f\n", $3}' /proc/loadavg
sleep 3
done
