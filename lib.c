// gcc lib.c --share -o liblib.so
#include "lib.h"

int test(Callback_handle_t *ph, Callback_t triple_info)
{
    Info info;
    triple_info(ph[0], &info)
}
