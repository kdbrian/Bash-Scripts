#! /bin/bash


# usage of the $* symbol ALLOWS US TO ACCESS ALL THE POSITIONAL PARAMETERS OF THE SCRIPT

# an unquoted $* works similarly to unquoted $@

#quoted $* allows to separate values with the first IFS character which is a space by default

# example "$*" -> $1,$2,..,$n if the IFS =,

# setting the  IFS value
IFS=,
echo "$*"
