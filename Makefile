all: cpu

cpu: main.o assembler.o Processor.o stack.o
	gcc main.o assembler.o Processor.o stack.o -o cpu
main.o: main.c
	gcc -c main.c
assembler.o: assembler.c
	gcc -c assembler.c
Processor.o: Processor.c
	gcc -c Processor.c
stack.o: stack.c
	gcc -c stack.c
clean:
	rm -rf *.o cpu	
