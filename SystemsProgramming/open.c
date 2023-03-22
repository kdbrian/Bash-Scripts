#include "headers.h"


/**

    the open system call
    opens a file and returns a file descriptor to it

*/

char Buf[30];

int * ptr;

/***
    Read data from a file using the read command and writes the output to stdout
*/
void readFile(char * data){

    int fd = open("file1.txt",O_RDONLY, 0666);

    int n=read(fd, data, 30);
    //printf("n is %d\n",n);
    ptr=&n;
    printf("Read : [%s]\n", data);
}

void openWrite(char * data ){ //, size_t amt_of_data){

    // fflush(stdin);
    // fflush(stdout);

    //printf("*ptr fnc is %d\n", *ptr);

    // opens the file if exists in overwrite mode or create otherwise
    int fd = open("file2.txt", O_WRONLY | O_CREAT , 0744);

    write(fd, data, *ptr);

    printf("Writting finished");
}

int main(){

    readFile(Buf);

    //printf("%s\n", Buf);
    //printf("*ptr is %d\n", *ptr);

    openWrite(Buf);

    return 0;
}