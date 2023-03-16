#! /bin/bash

# creates a log file of the memory usage of the current logged in user in mem.logs file
# starts by checking if the folder exists if not creates and the creates the logs files
if [ -d ~/performance ]; then
	echo "Folder exists"
	echo "Logs : $(date)" >> ~/performance/mem.logs
else
	echo "creating folder"
	mkdir ~/performance
	echo "Logs created on : $(date)" >> ~/performance/mem.logs
fi

free >> ~/performance/mem.logs
