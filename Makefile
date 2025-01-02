CC = gcc
CFLAGS = -Wall -Wextra -std=c99
SRC = chunk.c main.c memory.c debug.c 
OBJ = $(SRC:.c=.o)
EXEC = clox

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(EXEC)
	./$(EXEC)

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all run clean
