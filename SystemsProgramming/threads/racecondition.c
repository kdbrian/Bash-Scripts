#include "headers.h"
/**
 * 
 * Race condition occurs when two concurrent process/threads are trying to access a shared variable 
 * without restrictions
 * 
 * rather leaving the variable in an unwanted final state
 * 
 * i demonstrate by using a shared_variable which is accessed by two thread (A,B) with no order or restrictions
 * this leaves the final value different from what is expected
 * 
 * the initial value is 1
 *  thread A increments it by 1 => new shared variable is 2
 *  thread A decrements it by 1 => new shared variable is 1
 * the expected output of the shared variable is 1
 * 
 * But instead it provides 2
 * 
*/


int shared_variable = 1;

pthread_t threadA;
pthread_t threadB;

void * fun1();
void * fun2();

int main(){

    printf("Value before threads update %d\n", shared_variable);

    if(pthread_create(&threadA, NULL, fun1, NULL) < 0)
        exitCode();

    if(pthread_create(&threadB, NULL, fun2, NULL) < 0)
        exitCode();

    pthread_join(threadA, NULL);
    pthread_join(threadB, NULL);
    
    printf("Value after threads update %d\n", shared_variable);

    return 0;
}


void * fun1(){

    int recvd_val = shared_variable;

    printf("Thread A recieved variable as %d\n", recvd_val);

    recvd_val ++;//updates locally

    sleep(2);//gives enough time for thread B to access the shared variable

    shared_variable = recvd_val;

    printf("Thread A updated variable to %d\n", recvd_val);

    pthread_exit(NULL);

}

void * fun2(){

    int recvd_val = shared_variable;

    printf("Thread B recieved variable as %d\n", recvd_val);

    recvd_val --;//updates locally

    sleep(2);//gives enough time for thread A to access the shared variable

    shared_variable = recvd_val;

    printf("Thread B updated variable to %d\n", recvd_val);

    pthread_exit(NULL);
    
}