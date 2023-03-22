#! /bin/bash

# if statements

# start with if  end with fi
#works by checking the exit status of a command


if [ 2 -eq 1 ]; then
	echo "test 1 passed"

elif [ 2 -gt 1 ]; then
	echo "test 2 passed"
else
	echo test failed
fi

#more logic
a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)

# if test && test2; then
#or
# if test1 || test2; then
if [ "$a" = "$b" ] && [ "$a" = "$c" ]; then
	echo "removed two kept 1"
	rm file2.txt file3.txt;
else
	echo "different keep all"
fi
