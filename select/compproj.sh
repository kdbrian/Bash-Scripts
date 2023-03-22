#! /bin/bash

# takes user data using different options and 
# appends the data in a extensions.csv file

read -p "Enter full name : " fname lname

echo

read -N 4 -p "Enter extension number(4 digits long): " extNum

echo

#hides the secret access code
read -s -N 4 -p "Enter access code(4 digits long): "  acCode

# added menus using select to allow users to chose from different options
echo

#choose phone
PS3="Which phone would you like?"

select phone in handheld headset;
do
	echo "You chose $phone"
	break;
done

echo
#choose dept
PS3="Which department are you in?"

select dept in "finance" "sales" "customer service" "engineering";
do
	echo "You chose $dept"
	break
done

# use the >> to redirect the output to the file
echo "$fname,$lname,$extNum,$acCode,$phone,$dept" >> extensions.csv


exit 0
