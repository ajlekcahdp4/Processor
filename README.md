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
### To run assembler use:
```
$ make Asm
```
### To run processor use:
```
$ make Proc
```
### To run both assembler and processor use:
```
$ make
```
### To convert picture to asm code use:
* Assign the variable PIC with file/path/and/pic_name.txt
* And then run:

```
$ make pic_convert
```
### To display a picture on the screen use:
* Assign the variable ASMCODE with file/path/and/piccodename.txt
* Then run:
```
$ make
```

### To delete all *.o , *.out and logfiles use:
```
$ make clean
```
