#! /bin/bash

#does alll the calculation requested by the user with ease

if [[ $# -lt 1 ]]; then
	echo "Error provide an expression pls"
	exit 1
fi

echo $(( $@ ))

exit 0
