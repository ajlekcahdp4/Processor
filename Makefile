CC=gcc
CFLAGS= -Wall -Werror -Wextra
PIC=pic_conv/pictures/pic_to_draw.txt
all: cpu

cpu: Asm Proc
Asm:
	$(CC) $(CFLAGS) assembler/asm_main.c assembler/assembler.c -o asm.out
Proc:
	$(CC) $(CFLAGS) processor/proc_main.c processor/processor.c stack/stack.c -o proc.out

pic_convert: pic_conv/pic_to_asm_code.c
	$(CC) $(CFLAGS) pic_conv/pic_to_asm_code.c -o conv.out
clean:
	rm -rf *.o *.out Proc_log_file.txt Data_stk_logfile.txt Rets_logfile.txt code.bin
