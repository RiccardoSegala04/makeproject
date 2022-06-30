CC = gcc

CFLAGS = -g -Wall
INCLUDE = include
SOURCE = src
BIN = bin
TARGET = makeprj
DEST = /usr/local/bin
RM = rm

default: build

build:
	$(CC) $(CFLAGS) -I $(INCLUDE) -c src/*.c
	$(CC) *.o -o $(TARGET)
	mv *.o $(BIN)

run:
	./$(TARGET)

clean:
	$(RM) $(TARGET)
	$(RM) -r $(BIN)

install:
	cp ./$(TARGET) $(DEST)

remove:
	$(RM) $(DEST)/$(TARGET)
