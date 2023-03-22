#! /bin/bash

# a project to create a countdown timer using the getopts and while statements

# the user will provide the minutes and seconds using the command options

# usage in the format 

# ./countdown.sh -m <number of minutes> -s <number of seconds>

# countdown to till the time is up
# getting the input variables from the cmd options

while getopts "m:s:" opt; do
	#echo "$opt $OPTARG"
	case "$opt" in
		m)min=$OPTARG ;;
		s)sec=$OPTARG ;;
		*)echo "Invalid input"; exit 1 ;;
	esac
done

# we have the minutes and seconds
# nest the seconds inside the minutes
# while mins

echo "Timer started for $min minutes, $sec seconds"
#sleep 1
while [ $min -ge 0 ]; do
	echo "$min minutes $sec seconds remaining"
	while [ $sec -gt 0 ]; do
		sleep 1
		sec=$(( $sec - 1 ))
	done
	min=$(( $min - 1))
	sec=59
done


echo "Time is up"
