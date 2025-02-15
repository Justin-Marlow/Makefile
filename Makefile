# Author: Justin Marlow
# File: Makefile
# Last Modified: 2025-02-15
# Purpose: Makefile to compile Employee project


# Compiler
CC = g++

# Target executable name
TARGET = employee

# Compilation flags
CFLAGS = -c -Wall -Wextra

# Object files
OBJS = main.o Employee.o Officer.o Supervisor.o

#Default target: Build program
all: $(TARGET)

# Link the target executable
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

# Compile main.o
main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) main.cpp -o main.o

# Compile Employee.o
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp -o Employee.o

# Compile Officer.o
Officer.o: Officer.cpp Officer.h Employee.h
	$(CC) $(CFLAGS) Officer.cpp -o Officer.o 

# Compile Supervisor.o
Supervisor.o: Supervisor.cpp Supervisor.h Employee.h
	$(CC) $(CFLAGS) Supervisor.cpp -o Supervisor.o

# Clean up object files and executable
clean:
	rm -f $(OBJS) $(TARGET) *~
