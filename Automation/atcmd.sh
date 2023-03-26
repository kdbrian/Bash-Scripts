#! /bin/bash

# the at command used for running a job (group of tasks ) at a specific   time

# syntax at <time> e.g. at 5:00am

# usage at -l provides a list of all scheduled jobs

# to remove a job use at -r <job_id>

#  to run a script file specify the -f option

# i scheduled the below command to run at a specified time

# at <time> -f script_name.sh


mkdir at_files

echo "This was a scheduled task" >> ./at_files/"at_file".txt