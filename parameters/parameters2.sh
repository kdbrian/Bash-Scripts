#! /bin/bash


#continuation of the special parameters

# $@  wraps all the given positional parameters space separated

echo $@

# $@ subjects the parameters to word splitting

# when used with double quotes each parameter is the grouped with double quotes
# "$@"  <==> "$1" .. "$n"

#useful for doing commands such as creating multiple files

if [[ $# -gt 0 ]];  then
	touch "$@"
	echo "Files: [ $@ ] created successfully"
else
	echo "provide atleast one file name"
	echo "Usage : $0 <file 1 name> .. <file n name>"
fi
# creates files from the names specified as positional params
# Usage : ./$0 <file 1 name> .. <file n name>


exit 0


