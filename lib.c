// gcc lib.c --share -o liblib.so
#include "lib.h"

int test(Julia_obj_handle_t h, Callback_t get_info)
{
    Info info;
    int result = get_info(h, &info);

    return info.n;
}
