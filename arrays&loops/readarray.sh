#! /bin/bash

# using readarray to create arrays

# reads the value and converts it into an array

# reading the contents of a file into an indexed array

readarray days < days.txt; # redirecting the input of the readarray cmd to a file

echo ${days[@]}

# the contents are read upto the '\n' and stored in a single variable in the array

# this line displays the whole value in the indexed arrays with the '\n' characters
echo ${days[@]@Q}

# to avoiding reading the newline characters use the readarray with the '-t' option

readarray -t days2 < days.txt

echo ${days2[@]}

# the value will only contain the data only without the '\n's
echo ${days2[@]@Q}
