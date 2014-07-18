CC=gcc
#CC=i686-w64-mingw32-gcc
#CC=clang
CFLAGS=-std=c99 -O2 #-W -Wall -pedantic 
LIBS=-lSDL2 -lSDL2_image -lSDL2_ttf
OBJS=tetris.o input.o
OUTPUT=tetris

all: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(OUTPUT) $(LIBS)

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<
	
clean:
	rm *.o
	rm $(OUTPUT)

package:
	tar cfv pf.tar $(OUTPUT) data/*
