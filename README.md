# Makefile
Makefile Template and example source code

Description
The purpose of this assignment is simple: practice writing Makefiles for a given project. A good compilation system (e.g., Make) will make your lives easier while working on your own projects, and makes the use of your software easier for the end user.

I have provided you with the source code for a small inheritance project containing a base Employee class and derived Officer and Supervisor classes, along with a main driver: Employees.zip Download Employees.zip  Your assignment will be to write and turn in a working makefile for the project.

Assignment Specifications
At minimum your makefile should include:

A header comment with the labeled author name, file name, last date of modification, and purpose.
Variables for:
CC - The compiler g++
TARGET - The build target (executable) name employee
CFLAGS - Any compile flags (at minimum -c,-Wall, -Wextra)
Targets for:
all - should specify the target as its only dependancy
$(TARGET) - should link all .o files and create the binary $(TARGET).
main.o - should compile main.o from source
Employee.o - should compile Employee.o from source
Officer.o - should compile Officer.o from source
Supervisor.o - should compile Supervisor.o from source
clean - should remove all objects (*.o), Emacs backups (*~), and the target.
Please make sure that variables are used appropriately in your target specifications (e.g., once you define TARGET, CC, or CFLAGS, you should prefer their use to a literal value).

Be sure to comment where appropriate in your Makefile (e.g., a good comment for your CFLAGS definition would be # Compile with all errors and warnings). You should document (at minimum) the file, and all variable assignments.