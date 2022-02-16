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
./asm.out inputfile.asm outputfile.bin
// assemble code from inputfile.asm and save binary code into outputfile.bin
```
### To run processor use:
```
make Proc
./proc.out bin_code_file_name.bin
// run binary code from bin_code_file_name.bin
```
### To convert ASCII-art picture to assembly code use:
```
make pic_convert
./conv inputfile.txt pic_asm_code.asm
// Read picture from inputfile.txt and save assembly code of pictur into pic_asm_code.asm
```
To assemble this picture's code run:
```
make Asm
./asm.out pic_asm_code.asm bin_pic.bin
```
And then run processor:
```
./proc.out bin_pic.bin
```


### To delete all *.o , *.out and logfiles use:
```
$ make clean
```
