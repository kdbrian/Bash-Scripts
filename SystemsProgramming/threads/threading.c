#include "headers.h"

void * fun();

pthread_t thred;

int main(){

    if(pthread_create(&thred, NULL, fun, NULL) < 0)
        printf("Error creating new thread");

    pthread_join(thred, NULL);


    return 0;
}

void * fun(){
    printf("Hello from thread 1\n");
}