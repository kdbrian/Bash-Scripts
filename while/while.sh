#! /bin/bash


# while loops

# runs a certain command while the exit status is zero(0)

# syntax while ... done

read -p "Enter a number" num

while [[ $num -gt 10 ]];do

	echo $num;
	num=$(( $num-1 ))
done
