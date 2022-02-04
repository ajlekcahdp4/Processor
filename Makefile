all: cpu

cpu: main.o assembler.o Processor.o stack.o
	gcc main.o assembler.o Processor.o stack.o -o cpu
main.o: main.c
	gcc -c main.c
assembler.o: assembler/assembler.c
	gcc -c assembler/assembler.c
Processor.o: processor/Processor.c
	gcc -c processor/Processor.c
stack.o: stack/stack.c
	gcc -c stack/stack.c
clean:
	rm -rf *.o cpu	
