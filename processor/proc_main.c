#include "Processor.h"
#include <stdio.h>

int main ()
{
    FILE* log_file = fopen("Proc_log_file.txt", "w");
    Processor(log_file);
    return 0;
}