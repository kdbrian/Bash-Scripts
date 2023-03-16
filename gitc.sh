#! /bin/bash

	##################################
	#	project By Brian K	 #
	#	github.com/junrdev	 #
	##################################

echo

echo "Git commit client"

#check if git is initialized in the working directory
#check if we have a .git directory
if [[ -d .git ]]; then

	#check if the file name and commit message are give
	if [[ $# -lt 2 ]]; then
		echo "Error in $0"
		echo "Usage: $0 <filename> <commit message>"
		exit 1
	fi

	#check if the first parameter is actually a file and not a directory
	if [[ -f $1 ]]; then

		#  stage and commit the file
		echo "Staging and commiting $1......"

		git add $1 && git commit -m "$2"
	else
		echo "Error: the parameter provided is not a file"
		echo "Usage: $0 <filename> <commit message>"
	fi

else
	echo "Error: No existing git repository in the current directory"
	exit 0
fi

echo

exit 0
