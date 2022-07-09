#ifndef __LIBNATIVEIMPL_H
#define __LIBNATIVEIMPL_H

#include <graal_isolate_dynamic.h>


#if defined(__cplusplus)
extern "C" {
#endif

typedef graal_isolatethread_t* (*get_first_isolate_fn_t)(graal_isolatethread_t*);

typedef void (*create_app_fn_t)(graal_isolatethread_t*);

typedef int (*add_fn_t)(graal_isolatethread_t*, int, int);

typedef void * (*create_display_fn_t)(graal_isolatethread_t*);

typedef char (*display_read_and_dispatch_fn_t)(graal_isolatethread_t*, void *);

typedef void (*display_sleep_fn_t)(graal_isolatethread_t*, void *);

typedef void * (*create_shell_fn_t)(graal_isolatethread_t*, void *);

typedef void (*shell_set_text_fn_t)(graal_isolatethread_t*, void *, char*);

typedef void (*shell_open_fn_t)(graal_isolatethread_t*, void *);

typedef char (*shell_is_disposed_fn_t)(graal_isolatethread_t*, void *);

typedef void (*shell_disposed_fn_t)(graal_isolatethread_t*, void *);

#if defined(__cplusplus)
}
#endif
#endif
