CC=cc
CFLAGS=-Wall -Wextra -pedantic -std=c99
LDFLAGS=$(shell pkg-config --libs swc wayland-server)
