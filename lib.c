// gcc lib.c --share -o liblib.so
#include "lib.h"

int fun(Handle hModel,
        const char *id,
        const char *typeName,
        Handle inputIds,
        Handle outputIds,
        Handle attrNames,
        Handle attrVals,
        Handle* pLayerEntry) {}