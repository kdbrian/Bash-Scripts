#! /bin/bash

# the most basic type of arrays indexed arrays

# syntax array_name=( <values separated by a space> )

# the elements can be of any type ints and strings

# indexing start at o
# 1=>0 2=>1 3=>4 ....

nums=(1 2 3 4 5)

# echos the first element 
echo $nums

# echos the element at the specified index
echo ${nums[1]}

# echos the whole array => just like how @ enables us to get all the positional parameters
echo ${nums[@]}

# parameter expansion tricks are applicable to arrays
echo ${nums[@]:1}; #outputs elements from index one to the end