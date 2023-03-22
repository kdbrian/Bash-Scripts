#! /bin/bash

# the most basic type of arrays indexed arrays

# syntax array_name=( <values separated by a space> )

# the elements can be of any type ints and strings

# indexing start at 0
# 1=>0 2=>1 3=>2 ....

nums=(1 2 3 4 5)

# echos the first element 
echo $nums

# echos the element at the specified index
echo ${nums[1]}

# echos the whole array => just like how @ enables us to get all the positional parameters
echo ${nums[@]}

# parameter expansion tricks are applicable to arrays

echo ${nums[@]:1}; #outputs elements from index one to the end

echo ${nums[@]:1:2}; #outputs elements from index one to a length of 2

# echo ${nums[@]:: -1}; #outputs elements from index one to a length of 2

# to insert an element to an existing array use the following syntax
# array_name+=(value)
nums+=(6)

echo ${nums[@]}

# to delete an element from an array use the syntax
# unset array_name[index_of_element]

unset nums[0]; # removes the element at the index 0

echo "Elements : ${nums[@]}"

# after deletion the index as well as the element no longer exists in the array

echo "Indices : ${!nums[@]}"; # using this to echo the available indices of the array we will not have the index 0


# to change an element inside an array use the following syntax
# array_name[index]=new_value
# the line below inserts the element "brain" at index 0
nums[0]="brain"

echo ${nums[@]}


exit 0;