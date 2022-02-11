#include "Processor.h"
#include <stdio.h>

int main (int argc, char** argv)
{
    FILE* log_file = fopen("Proc_log_file.txt", "w");
    Processor(log_file, argv[argc - 1]);
    return 0;
}