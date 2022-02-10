ASMCODE=examples_asm_code/factorial_rec.asm
CC=gcc
CFLAGS= 
PIC=pic_conv/pictures/pic_to_draw.txt
all: cpu

cpu: Asm Proc
Asm:
	$(CC) assembler/asm_main.c assembler/assembler.c -o asm.out
	./asm.out $(ASMCODE)
Proc:
	$(CC) processor/proc_main.c processor/processor.c stack/stack.c -o Proc.out
	./Proc.out

pic_convert: pic_conv/pic_to_asm_code.c
	$(CC) pic_conv/pic_to_asm_code.c -o conv.out
	./conv.out $(PIC)
clean:
	rm -rf *.o *.out Proc_log_file.txt Data_stk_logfile.txt Rets_logfile.txt code.bin
