#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<stdbool.h>
#include<stdlib.h>

/***
	Method to check whether a fork function ran successfuly
	this is achieved by checking the value of the pid
	pid == 0 || pid > 0 always
	if pid < 0 the child process wasn't created
*/
bool checkPid(size_t pid){
	return pid < 0 ? false : true ;
}

/***
	Method to check the file descriptor
	this is achieved by checking the value of the pid
	fd > 0 always
	if fd < 0 the file operation (open .. ) wasn't successful
*/
bool checkFd(size_t fd){
	return fd < 0 ? false : true ;
}

/***
    flushes the char array by initializing each index to the terminating character '\0
*/
void flushArray(char * arry){

    for (size_t i=0; i< sizeof(arry); i++)
        arry[i]='\0';
}
