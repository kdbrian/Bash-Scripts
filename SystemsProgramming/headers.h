#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<stdbool.h>
#include<stdlib.h>

bool checkPid(size_t pid){
	return pid < 0 ? false : true ;
}
