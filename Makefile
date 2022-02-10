ASMCODE=examples_asm_code/factorial_rec.txt
CC=gcc
CFLAGS= 
PIC=pic_conv/pictures/pic_to_draw.txt
all: cpu

cpu: main.o assembler.o Processor.o stack.o
	$(CC) main.o assembler.o Processor.o stack.o -o cpu.out
	./cpu.out $(ASMCODE)
main.o: main.c
	$(CC) $(CFLAGS) -c main.c
assembler.o: assembler/assembler.c
	$(CC) $(CFLAGS) -c assembler/assembler.c
Processor.o: processor/Processor.c
	$(CC) $(CFLAGS) -c processor/Processor.c
stack.o: stack/stack.c
	$(CC) $(CFLAGS) -c stack/stack.c
Asm:
	$(CC) assembler/asm_main.c assembler/assembler.c
Proc:
	$(CC) processor/proc_main.c processor/processor.c stack/stack.c -o Proc.out
	./Proc.out
pic_convert: pic_conv/pic_to_asm_code.c
	$(CC) pic_conv/pic_to_asm_code.c -o conv.out
pic_convert_run:
	./conv.out $(PIC)
clean:
	rm -rf *.o *.out Proc_log_file.txt Data_stk_logfile.txt Rets_logfile.txt code.bin
