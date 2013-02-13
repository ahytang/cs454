# Assignment 0 Makefile
#
XCC = g++
# -g: include hooks for gdb
# -Wall: report all warnings

INCLUDES = -I$(PATH)
CFLAGS = -Wall -ggdb $(INCLUDES) 

all:  stringServer stringClient

stringServer: stringServer.cpp
	$(XCC) $(CFLAGS) $^ -o $@

stringClient: stringClient.cpp
	$(XCC) $(CFLAGS) $^ -o $@

clean:
	-rm -f stringServer stringClient 
