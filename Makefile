# https://opensource.com/article/18/8/what-how-makefile
# say_hello:
# echo "hello world"

# .DEFAULT_GOAL := generate

.PHONY: all say_hello generate clean

all: say_hello generate

# CC = gcc

CC := gcc 
CC := ${CC}

cc_print: 
	@echo ${CC}

hello: hello.c
	${CC} hello.c -o hello.o

say_hello:
	@echo "hello world"

generate:
	@echo "Creating empty text files ..."
	touch file-{1..10}.txt 

clean:
	@echo "Cleaning up ..."
	rm *.txt 

