#! /bin/bash

	##################################
	#	project By Brian K	 #
	#	github.com/junrdev	 #
	##################################

echo

echo "Git commit client"

#check if the file name and commit message are give
if [[ $# -lt 2 ]]; then
	echo "Error in $0"
	echo "Usage: $0 <filename> <commit message>"
	exit 1
fi

#  stage and commit the file
echo "Staging and commiting $1......"

git add $1 && git commit -m "$2"

echo

exit 0
