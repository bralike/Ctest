.PHONY:all
all:test vimtest
#	@echo starting compile.....

OBJ = one.o two.o

#${OBJ}:%.o:%.c
#	${CC} -c ${CFLAGS}$< 



test:${OBJ} one.h
	gcc ${OBJ} -o test
one.o:one.c
	gcc -c one.c
two.o:two.c one.h
	gcc -c two.c
vimtest:vimtest.c
	gcc vimtest.c -o vimtest

	
.PHONY:clean
clean:
	rm -f test vimtest *.o

.PHONY:cleanall cleanobj cleandiff

#cleanall:cleandiff cleanobj
#	rm test vimtest
#cleandiff:
#	rm *.diff
#cleanobj:
#	rm *.o

