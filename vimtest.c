#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void convert(long n,char* p);

void main(){
    unsigned char* ptr=NULL;
    ptr = (unsigned char*)malloc(sizeof(char)*100);
    long num = 5;
    /* srand((int)time(0)); */
    /* num = rand(); */
    convert(num,ptr);
    printf("%s\n",ptr);
    free(ptr);
    return ;
}

void convert(long n ,char* p){
    /* int t_size = sizeof(int)*8; */
    int t_size = 32;
    while(t_size>0){
        sprintf(p++,"%d",(n>>(t_size-1)&1));
        t_size--;
    }

}
