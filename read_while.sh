#! /bin/bash

# using read while loops to process the contents of a file

while read line; do
    echo $line
done < "$1"
#redirecting the while loop ( do not redirect the stdin of the read command ) to the first positional parameter

echo
# using process substitution to redirect the input of the while loop
while read dir; do
    echo $dir
done < <(ls $HOME)
# the above line redirects the O/P of the ls $home command as the input of the while loop