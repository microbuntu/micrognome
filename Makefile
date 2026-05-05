include config.mk

SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)

all: debug

debug: CFLAGS+=-g -O0 -DDEBUG
debug: build

release: CFLAGS+=-Os
release: build

build: micrognome

.c.o:
	$(CC) $(CFLAGS) -c $<

$(OBJ): config.mk

micrognome: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)

clean:
	rm -f micrognome $(OBJ)

.PHONY: all debug release clean build
