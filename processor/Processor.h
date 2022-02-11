#ifndef PROCESSOR_INCLUDED
#define PROCESSOR_INCLUDED

#include "../includes.h"
#include "../stack/stack.h"

struct ProcData
{
    Stack * stk;
    int * reg;
};



void Processor (FILE* log_file, char* code_file_name);
void RunCode (char* code, int* ip, FILE* log_file, Stack* Rets, struct ProcData * Data, int* RAM);

#endif // PROCESSOR_INCLUDED
