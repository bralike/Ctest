/*
 *把IP地址点分进制转换为十进制
 *
 *曹景源
 * */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <netinet/in.h>

int main(int argc ,char ** argv){
    int n;
    unsigned int ip;
    if(argc != 2 ){
        printf("usage ./inet_pton <ip>\n");
        exit(1);
    }

    if(inet_pton(AF_INET,argv[1],&ip) <= 0){
        printf("error!");
        exit(1);
    }else{
        printf("%d",ip);
    }
    return 0;

}
