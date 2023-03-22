#include "headers.h"

/***
    the dup system call

    used to duplicate a file descriptor

    the duplicated file disc can then be used elsewhere

*/

size_t pid;
size_t fd, fd2;
char Buf[30], Buf2[30];

int n,n2;

int main(){

    flushArray(Buf);
    flushArray(Buf2);

    
    fd = open("file1.txt", O_RDONLY, 0666);

    pid = fork();

    if(!checkFd(fd) || !checkPid(pid)){
        write(2, "error creating child process or opening file", 45);
        exit(1);
    }

    fd2 = dup(fd);

    //printf("Value of [fd]: %d \t [fd2] : %d\n", fd, fd2);

    if( pid == 0){

        n2 = read(fd2, Buf2, 30);
        printf("Child [%d]\n", getpid());
        printf("Read %d bytes from file descriptor %d\n", n2, fd2);
        printf("Data : [%s]\n", Buf2);
        fflush(stdin);
        
    }else{

        sleep(3);
        strcpy(Buf, "Hello world am home");

        n = write(fd, Buf, 30);
        printf("Parent [%d]\n", getpid());
        printf("Read %d bytes from file descriptor %d\n", n, fd);
        printf("Data : [%s]\n", Buf2);
        
        fd = open("file1.txt", O_WRONLY);
        write(fd, Buf, 19);
    }

    printf("Done\n");


    return 0;
}