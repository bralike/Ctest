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

void new(char** argv);
void trans();
    int sock_fd,connect_fd,n;
    char buff[MAXLINE];
    char sendline[4096],recvline[4096];
    struct sockaddr_in serveraddr;
int main(int argc,char **argv){

    if(argc<2){
        printf("usage ./socket_client <ip>");
        exit(-1);
    }
    if((sock_fd = socket(AF_INET,SOCK_STREAM,0))<0){
        CHKERR(errno);
        exit(-1);
    }
    new(argv);
    if(connect(sock_fd,(struct sockaddr *)&serveraddr,sizeof(serveraddr))<0){
        CHKERR(errno);
        exit(-1);
    }
    trans();
    close(sock_fd);
    exit(0);
}

void new(char** argv){
    memset(&serveraddr,0,sizeof(serveraddr));
     serveraddr.sin_family = AF_INET;
     serveraddr.sin_addr.s_addr = htonl(INADDR_ANY);
     serveraddr.sin_port = htons(PORT);
     if(inet_pton(AF_INET,argv[1],&serveraddr.sin_addr)<=0){
         printf("%s is an error format!\n",argv[1]);
         exit(-1);
     }
}

void trans(){
    while(1){
        printf("please input a msg to server:");
        fgets(sendline,MAXLINE,stdin);
        if(send(sock_fd,sendline,strlen(sendline),0)<0){
            CHKERR(errno);
            exit(-1);
        }
        if(!fork()){
            if(n = recv(sock_fd,recvline,strlen(recvline),0)<0){
                CHKERR(errno);
                exit(-1);
            }
            close(sock_fd);
            exit(0);
        }
        recvline[n] = '\0';
        fprintf(stdout,"the server is say %s\n",recvline);

    }
}
