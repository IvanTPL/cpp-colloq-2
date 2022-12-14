CC=g++
FLAGS=-std=c++2a -Wall -Werror -Wextra -Wno-unused-variable -fsanitize=undefined -fsanitize=address

.PHONY: ping-pong clean

all: run

run: pp.cpp
	$(CC) $(FLAGS) pp.cpp -o run

ping-pong:
	./run

clean:
	rm -f *.o run