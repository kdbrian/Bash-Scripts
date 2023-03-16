#! /bin/bash

# the test command
# used to test the truthy of a statement
# if evaluated to true returns exit(0) otherwise exit(1)
# syntax [] test written inside (spaces must be left after the start bracket and before the closing)

#the $? checks for the exit status of the check

# -eq checks if two variables are equal
[ 3 -eq 4 ] ; echo $?

# -ne checks if two variables are not equal
[ 4 -ne 0 ]; echo $?

#commands that can use for testing integers	for strings
# -eq for equal to					=
# -ne for not equal to					!=
# -gt for greater than
# -lt  '  less than
# -geq '  greater than or equal to
# -leq '  less than or equal to


# -z to check if a string is empty


a="hello"
b="world"

#comparing strings
[[ $a = $b ]] ; echo $?

#checking if a  string is empty
[[ -z $a ]]; echo $?;

# -n matches nonempty string( a length that is not 0) not empty
[[ -n $b ]]; echo $?


# file operators
# -e used to check if a file exists
[[ -e demo.txt ]]; echo $?

# -f checks whether something is a regular file
[[ -f demo.txt ]]; echo $?

# -d checks if something is a directory
[[ -d demo ]]; echo $?

# -x checks if something exists and has execution permisions
[[ -x demo ]]; echo $?;
