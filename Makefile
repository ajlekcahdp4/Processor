ASMCODE=pic_code.asm#examples_asm_code/factorial.txt
CFLAGS=-c
PIC=pic_conv/pictures/pic_to_draw.txt
all: cpu

cpu: main.o assembler.o Processor.o stack.o
	gcc main.o assembler.o Processor.o stack.o -o cpu
main.o: main.c
	gcc $(CFLAGS) main.c
assembler.o: assembler/assembler.c
	gcc $(CFLAGS) assembler/assembler.c
Processor.o: processor/Processor.c
	gcc $(CFLAGS) processor/Processor.c
stack.o: stack/stack.c
	gcc $(CFLAGS) stack/stack.c
run:
	./cpu $(ASMCODE)
pic_convert: pic_conv/pic_to_asm_code.c
	gcc pic_conv/pic_to_asm_code.c -o conv
pic_convert_run:
	./conv $(PIC)
clean:
	rm -rf *.o cpu
