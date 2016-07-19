#include <stdio.h>
#include <libio.h>

long filesize(FILE *fp);

int main(){
    FILE* stream;
    long byte;
    stream = fopen("MY_FILE.txt","w+");
    fprintf(stream,"this is a test!");

    byte = filesize(stream);
    printf("MY_FILE.txt is %ld bytes\n",byte);

    return 0;
}

long filesize(FILE *fp){
    long curpos,length;
    curpos = ftell(fp);
    fseek(fp,0L,SEEK_END);
    length = ftell(fp);
    fseek(fp,0L,SEEK_SET);

    return length;
}
