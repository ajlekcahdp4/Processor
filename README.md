# Processor
My virtual processor (with my own assembler language)
## Consists of:
### [assembler](https://github.com/ajlekcahdp4/Processor/tree/main/assembler)
Assembler is the program, that translate assembler code to binary code understandable to the processor (exambles of assembly language code is [here](https://github.com/ajlekcahdp4/Processor/tree/main/examples_asm_code).)
### [processor](https://github.com/ajlekcahdp4/Processor/tree/main/processor)
Processor is the program, that runs binary code.
### [stack](https://github.com/ajlekcahdp4/Processor/tree/main/stack)
Just my realization of stack data structure.
### To select an executable assembler file:
* Assign the variable ASMCODE with file/path/and/codefilename.txt
### To clone this repository run:
```
git clone https://github.com/ajlekcahdp4/Processor
cd Processor
```
### To run assembler use:
```
make Asm
./asm.out asm_code_file_name
```
### To run processor use:
```
make Proc
./proc.out bin_code_file_name
```
### To run both assembler and processor use:
```
$ make
./asm.out asm_code_file_name
./proc.out bin_code_file_name
```
### To convert picture to asm code use:
* And then run:

```
make pic_convert
./conv pic_file_name
```


### To delete all *.o , *.out and logfiles use:
```
$ make clean
```
