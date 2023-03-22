#include "headers.h"
// emulation of creating a child process  using the fork command

size_t pid;

int main(){

	printf("before fork\n");


	pid= fork();

	if(pid == 0){

		printf("Child process pid : %d\n", getpid());
		printf("Parent pid : %d\n", getppid());

	}else if( pid > 0){

		printf("Parent process pid : %d\n", getpid());
		printf("Child process' pid : %d\n", pid);
		
	}

	printf("Outside fork \n");
return 0;
}
