/**
 * 
 * Demonstrating how to pass parameters to threads and recieve them back
 * 
 * i will use a single thread to update a local variable by passing it to the thread functions as an argument
*/
#include "headers.h"

pthread_t thread;

//thread function prototype to recieve one parameter
void * fun(void * val);


int main(){

    int var=5;

    int * local_variable = &var;

    printf("Initial value of the variable is %d\n", var);
    
    //using pthread_create 4th arg to pass a parameter to a thread
    if( pthread_create( &thread, NULL, fun, (void *)local_variable) < 0)
        exitCode();
    
    // printf("Adress of local var ; %p\n", local_variable);

    void * recv;
    pthread_join(thread, &recv);//recieves the value of the changed variable from the thread
    printf("main got value back as %d\n", *(int *)recv);


    return 0;
}

void * fun(void * val){

    // printf("Adress of variable is %p\n", val);

    int * value  = (int *) val;

    printf("Thread Recieved the variable as %d\n", *value);

    // printf("Adress of var ; %p\n", *value);

    *(value)-- + ++*(value);
    printf("New value from thr %d\n", *value);

    //returning a value back from the thread
    pthread_exit((void *)value);
}