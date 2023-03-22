#include "headers.h"

/**
    The read system call
    read a number of characters from a file descriptor
*/

char Buf[30];

/***
    Read data from the terminal using the read command and writes the output to stdout
*/
void readTerminal(char *data){

    read(0, data, 10);
    printf("Reading finished\n");
    printf("Read : {%s}\n", data);
}

/***
    Read data from a file using the read command and writes the output to stdout
*/
void readFile(char * data){

    int fd = open("file1.txt", O_CREAT, 0666);

    read(fd, data, 30);

    printf("Read : [%s]\n", data);
}


int main(){

    readFile(Buf);

    flushArray(Buf);

    readTerminal(Buf);

    return 0;
}