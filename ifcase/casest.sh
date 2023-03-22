#! /bin/bash

#case statements
#syntax starts with case ends with esac
# case "$variable" in //like switch(variable) begins the entire block
#	case1) ..statements ;;
#	case2) ..statements ;;
#	casen) ..statements ;;
#	*) ...statements ;; //represent the default override
# esac

#checking the number of digits in a variable
read -p "Enter a number: " num

case "$num" in
	[0-9]) echo "You entered a 1 digit number" ;;
	[0-9][0-9]) echo "You entered a 2 digit number" ;;
	[0-9][0-9][0-9]) echo "You entered a 3 digit number" ;;
	*) echo "Number not matched" ;;
esac
