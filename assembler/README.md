# Assembler
## This assembler has commands:
### push <arg>
"push" command push argument into stack
* avaliable types of push's argument:
```
push 1 //Push (int)1
push rax //Push number from ax register
push [45] //Push number from RAM (from index 45)
push [rax + 2] //Push from RAM[<number from register ax> + 2]
```
### pop <arg>
"pop" command pop stack into argument
*avaliable types of pop's argument:
```
pop rax //Pop number into register ax
pop [45] //Pop number into RAM[45]
pop [rax] //Pop number into RAM[<number from register ax>]
pop [rax + 2] ////Pop number into RAM[<number from register ax> + 2]
```
### in
"in" command push into stack number from stdin.
### out
"out" command pop number from stack and show it on stdout.
### add
"add" commmand pop 2 numbers from stack, add one number to another and push the result into stack.
### sub
"sub" commmand pop 2 numbers from stack, subtracts the first number from the second and push the result into stack. 
### mul
"mul" commnad pop 2 numbers from stack, multiplies it and push the result into stack.
### DIV
"DIV" command pop 2 numbers from stack, divides the second number by the first and push the result into stack.
### draw <number>
"draw" command show into display bytes from videomemory (from RAM[256] to RAM[<number>])
### jmp <label>
Processor will jump into "label".
### jb <label>
(jump if below) pop 2 numbers from stack and jump into <label> if second number less then the first.
### ja <label>
pop 2 numbers from stack and jump into <label> if second number greater then the first.
### je <label>
(jump if equal) pop 2 number from stack and jump into <label> if second number is equal to the first.
### jne <label>
(jump if not equal) pop 2 number from stack and jump into <label> if second number is not equal to the first.
### hlt
"hlt" command is necessary in the end of every asm program

## You can also use functions in the asm code:
*you write in main code:
```
call function_name
```
and then in some place of code you must write:
```
function_name:
    <function body>
ret
```