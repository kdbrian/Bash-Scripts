#! /bin/bash


#how to process parameters

#positional parameters

#outputs the first positional parameter
echo $1

#special parameters

#outputs the number of positional parameters provided
echo "You provided $# parameters"

#if inside a file outputs the file name and could be used for error messages
#outside a file outputs the shell in use

if [ $# -lt 2 ];
	then
	echo "Provide atleast two parameters in the format below"
	echo "File $0 <operator> <Optionalparameter1> .. <Optional parameter4>"
	exit 1;
fi

#simple calculator practise
#first positional parameter is the operator
#for all the other 4 parameters work out according to the operator given
# ./parameters.sh + 1 2 3 4
# returns 10 which is 1+2+3+4
#am assigning default values just incase the parameters are not given
#${ expected value: -default value}
echo "The output for the parameters provided is $((${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0}))"


exit 0
