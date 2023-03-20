#! /bin/bash

# the getopts command

# allows us to get all the commands given to the script during running

# syntax getopts "all possible expected options"

# if the options requires a parameter separate by a colon

# creating a temp converter from farenheit to celcius and vice versa

# usage ./getopts.sh -f|-c <value>

# getops "f:c:" to ensure that it gets all the options we nest it inside a while loop condition

# the argument we put after the option gets saved in the $OPTARG variable

while getopts "f:c:" opt ; do

	#checking the user options using case statements
	case "$opt" in
		#farenheit to celcius
		f) result=$(echo "scale=2; ($OPTARG - 32) * (5 / 9)" | bc) ;;

		#celcius to farenheit
		c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc) ;;

		#any other unusual option since the getopts will provide a ? if no option is given
		\?) echo "Error in $0"; echo "Usage $0 [-f|-c]" ;;
	esac

echo $result

done
