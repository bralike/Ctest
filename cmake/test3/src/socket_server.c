#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <errno.h>
/*
 *方便后期修改
 * */
#define MAXLINE 4096
#define PORT 8000
#define CHKERR(n) if(n!=0) strerror(n)

void new();
void trans();

    int sock_fd,connect_fd,n;
    char buff[MAXLINE];
    char sendline[4096],recvline[4096];
    struct sockaddr_in serveraddr;
int main(void){

    if((sock_fd=socket(AF_INET,SOCK_STREAM,0))<0){
        CHKERR(errno);
        exit(-1);
    }
    new();
    if(bind(sock_fd,(struct sockaddr *)&serveraddr,sizeof(serveraddr))<0){
        CHKERR(errno);
        exit(-1);
    }
    if(listen(sock_fd,100)<0){
        CHKERR(errno);
        exit(-1);
    }
    printf("waiting...\n");

    trans();

    close(sock_fd);
    close(connect_fd);
}

void new(){

    memset(&serveraddr,0,sizeof(serveraddr));
     serveraddr.sin_family = AF_INET;
     serveraddr.sin_addr.s_addr = htonl(INADDR_ANY);
     serveraddr.sin_port = htons(PORT);

}
void trans(){
    while(1){
        if((connect_fd=accept(sock_fd,(struct sockaddr *)NULL,NULL))<0){
            CHKERR(errno);
            continue;
        }
        n = recv(connect_fd,buff,MAXLINE,0);
        printf("please input a msg to client:");
        fgets(recvline,MAXLINE,stdin);
        if(!fork()){
            if(send(connect_fd,recvline,strlen(recvline),0)<0){
                CHKERR(errno);
            close(connect_fd);
            }
        }
        buff[n] = '\0';
        fprintf(stdout,"client say: %s\n",buff);
    }
}
