/**
 * 
 * All the header files related to threads
 * All the files that include this header should be compiled with the -lpthread option
 * 
*/

#include<stdio.h>
#include<sys/types.h>
#include<fcntl.h>
#include<unistd.h>
#include<sys/types.h>
#include<pthread.h>
#include<stdlib.h>

void exitCode(){
    printf("Error creating thread in process %d\n", getpid());
    exit(1);
}