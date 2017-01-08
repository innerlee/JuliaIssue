typedef struct {
    int n;
} Info;

typedef void* Julia_obj_handle_t;

typedef int (*Callback_t)(Julia_obj_handle_t h, Info *pinfo);

int test(Julia_obj_handle_t h, Callback_t get_info);
