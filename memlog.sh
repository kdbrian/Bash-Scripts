#! /bin/bash

dir=$HOME/performance

if [ -d ~/performance ]; then
	echo "Folder exists"
	echo "Logs : $(date)" >> ~/performance/mem.logs
	free >> ~/performance/mem.logs
else
	echo "creating folder"
	mkdir ~/performance
	echo "Logs created on : $(date)" >> ~/performance/mem.logs
	free >> ~/performance/mem.logs
fi
