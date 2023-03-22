#! /bin/bash


# read the text file with folder and create all those folders

# reading the text file with all the folder names
while read "fld"; do

# quoting the file name to avoid word splitting
    mkdir "$fld"

#redirecting the input of the while loop to a file
done < "$1"


exit 0