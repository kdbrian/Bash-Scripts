#include "headers.h"


// the wait system call
// used to make the parent process wait for the child to complete execution
// by default the parent executes and finishes first then the child
// using wait the parent can wait for the child to finish so that it can execute
size_t pid;


int main(){

	printf("Before \n");

	pid= fork();

	if(checkPid(pid)){//checking for error during process creation

		//child
		if(pid == 0){

			sleep(1);
			printf("child finished\n");

		}else{//parent

			wait(NULL);
			printf("parent finished\n");

		}

	}else{
		write(2, "Error creating a child process" ,31);
		exit(1);

	}

	printf("After");
return 0;
}
