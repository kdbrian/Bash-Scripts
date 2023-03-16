#! /bin/bash

# the select command
# allows user to choose b2n different options provided in a menu

# syntax
# select <where to save the user response/default is RESPONSE> in <list of options>;
# do
# ....something
# by default program stays in a loop and using a break cmd terminates the loop
# done

#the PS3 variable is used to control the prompt by the select command
# which by default is #?

#changing the PS3 variable
PS3="What is the day of the week? "

# selecting which day of the week it is
select day in mon teu wed thur fri;
do
	echo "You selected $day"
	break
done

exit 0
