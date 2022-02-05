ASMCODE=pic_code.asm#examples_asm_code/factorial.txt
CC=gcc
CFLAGS= -c
PIC=pic_conv/pictures/pic_to_draw.txt
all: cpu

cpu: main.o assembler.o Processor.o stack.o
	$(CC) main.o assembler.o Processor.o stack.o -o cpu
main.o: main.c
	$(CC) $(CFLAGS) main.c
assembler.o: assembler/assembler.c
	$(CC) $(CFLAGS) assembler/assembler.c
Processor.o: processor/Processor.c
	$(CC) $(CFLAGS) processor/Processor.c
stack.o: stack/stack.c
	$(CC) $(CFLAGS) stack/stack.c
run:
	./cpu $(ASMCODE)
pic_convert: pic_conv/pic_to_asm_code.c
	$(CC) pic_conv/pic_to_asm_code.c -o conv
pic_convert_run:
	./conv $(PIC)
clean:
	rm -rf *.o cpu conv Proc_log_file.txt Data_stk_logfile.txt Rets_logfile.txt code.bin
