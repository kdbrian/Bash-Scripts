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
