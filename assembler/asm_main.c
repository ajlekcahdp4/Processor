#include <stdio.h>
#include "assembler.h"

int main (int argc, char** argv)
{
    char * buffer = 0;
    FILE* log_file = 0;
    int ch_numb = FillBuffer (argv[argc - 2], &buffer, &log_file);
    Assembler (buffer, ch_numb, argv[argc - 1], log_file);
    return 0;
}