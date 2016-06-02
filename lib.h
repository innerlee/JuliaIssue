typedef struct {
    void *p;
} Handle;

int fun(Handle hModel,
        const char *id,
        const char *typeName,
        Handle inputIds,
        Handle outputIds,
        Handle attrNames,
        Handle attrVals,
        Handle* pLayerEntry);