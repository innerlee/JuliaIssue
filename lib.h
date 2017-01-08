typedef struct {
    size_t n;
} Info;

typedef void* Callback_handle_t;

typedef int (*Callback_t)(Callback_handle_t h, Info *pinfo);

int test(Callback_t fill_info);
