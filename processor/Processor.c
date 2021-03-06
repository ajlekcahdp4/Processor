#include "Processor.h"
#include <sys/stat.h>
#include <time.h>

int BitComp (char a, char b, int n)
{
    int i = 0;
    while (i < n)
    {
        if ((a & (1<<i)) != (b & (1<<i)))
            return 0;
        i++;
    }
    return 1;
}

void delay (int ms)
{
    clock_t c = clock() + ms;
    while (clock() < c) {;}
}

void Processor (FILE* log_file, char* code_file_name)
{

    struct ProcData Data = {};
    Data.reg = (int *)calloc(5, sizeof(int));
    Data.stk = (Stack*)calloc(1, sizeof(Stack));
    StackCtor (Data.stk, 8, "Data_stk_logfile.txt");

    Stack * Rets = (Stack*) calloc (1, sizeof (Stack));
    StackCtor(Rets, 1, "Rets_logfile.txt");

    int *RAM = (int*)calloc (1024, sizeof(int));

    FILE* code_file = fopen (code_file_name, "rb");


    struct stat buf;
    stat("code.bin", &buf);
    int int_numb = buf.st_size;


    char* code = (char*)calloc (int_numb, sizeof(char));
    int_numb = fread (code, sizeof(char), int_numb, code_file);
    fclose (code_file);
    int ip = 0;
    for ( ip = 0; code[ip] != -1;)
    {
        RunCode(code, &ip, log_file, Rets, &Data, RAM);
    }
    RunCode(code, &ip, log_file, Rets, &Data, RAM);
}

#define DEF_CMD(name, num, args, ...)       \
if (BitComp(code[*ip], num, 5))             \
{                                           \
    __VA_ARGS__;                            \
}                                           \
else

void RunCode (char* code, int* ip, FILE* log_file, Stack* Rets, struct ProcData* Data, int* RAM)
{
    int x = 0;
    int y = 0;
    #include "../commands.h"
    {;}
}
#undef DEF_CMD
