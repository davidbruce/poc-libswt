#ifndef __LIBNATIVEIMPL_H
#define __LIBNATIVEIMPL_H

#include <graal_isolate.h>


#if defined(__cplusplus)
extern "C" {
#endif

graal_isolatethread_t* get_first_isolate(graal_isolatethread_t*);

void create_app(graal_isolatethread_t*);

int add(graal_isolatethread_t*, int, int);

void * create_display(graal_isolatethread_t*);

char display_read_and_dispatch(graal_isolatethread_t*, void *);

void display_sleep(graal_isolatethread_t*, void *);

void * create_shell(graal_isolatethread_t*, void *);

void shell_set_text(graal_isolatethread_t*, void *, char*);

void shell_open(graal_isolatethread_t*, void *);

char shell_is_disposed(graal_isolatethread_t*, void *);

void shell_disposed(graal_isolatethread_t*, void *);

#if defined(__cplusplus)
}
#endif
#endif
