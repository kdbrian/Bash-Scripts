#! /bin/bash


# using the read command to get input from the user

# the input from the user is saved in the REPLY variable by default


#echo "Enter name: "
#read name
#echo "You entered $name"

#simplified version of the above
# the -p prompts the user 
read -p "Enter name: " name

# we can provide with a timeout that disables read after a period of time if the user doesnt enter anything in the prompt
# done by the -t option followed by a time in seconds
read -t 5 -p "Enter Town: " town

echo

# the -s(secret) option
# hides the user input from the terminal

read -s -p "Enter your age:" age

echo

echo "You entered $name and ${town:-nothing} also ${age:-0}"

exit 0

