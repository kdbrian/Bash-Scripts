#include "headers.h"

/**
    demonstrating how the sleep command works
    lets a process pause execution for a while
    this allows any other process ( maybe a child ) to execute in parallel
*/

size_t pid;

int main(){


    printf("Outside\n");

    pid = fork();

    if(!checkPid(pid)){

        printf("Error creating process\n");
        exit(1);

    }


    if(pid == 0){//child process

        printf("\n");
        sleep(1);
        //assuming some heavy task exist here but with high priority
        for(int i=11; i<=20; i++){
            printf("[child] : %d\n", i);
        }

    }else{//parent process

        printf("\n");
        //assuming some heavy task exist here but with minimum priority
        for(int i=0; i<=10; i++){
            if(i==5){
                printf("[parent]:%d\n", i);
                sleep(3);//pausing the job here for a while
            }else
                
                printf("[parent]:%d\n", i);
        }
    }
    return 0;
}