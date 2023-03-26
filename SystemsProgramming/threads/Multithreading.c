#include "headers.h"

// beware to daclare the thread as a variable not a pointer
pthread_t thread1;
pthread_t thread2;

void * fun1();
void * fun2();

int main(){

    //pass the adress of the declared threads and the function related to each of them
    if(pthread_create(&thread1, NULL, fun1, NULL) < 0)
        printf("Error creating thread 1\n");
    

    if(pthread_create(&thread2, NULL, fun2, NULL) < 0)
        printf("Error creating thread 2\n");

    // the order of the bellow determined which of the two threads functions runs first
    pthread_join(thread2, NULL);
    pthread_join(thread1, NULL);

    return 0;
}

//function associated with the first thread
void * fun1(){
    printf("Thread 1 executing\n");
}

//function associated with the second thread
void * fun2(){
    printf("Thread 2 executing\n");
}