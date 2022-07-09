#include <stdio.h>
#include <stdlib.h>
#include <libnativeimpl.h>

int main(void) {
    int ret;
    graal_isolatethread_t *isolate_thread = NULL;

    ret = graal_create_isolate(NULL, NULL, &isolate_thread);
    if (ret != 0) {
        fprintf(stderr, "graal_create_isolate: %d\n", ret);
        return 1;
    }

    int result = -1;
    result = add(isolate_thread, 1, 20);

    void* display;
    display = create_display(isolate_thread);

    void* shell;
    shell = create_shell(isolate_thread, display);
    /* shell_set_text(isolate_thread, shell, "Hello"); */
    shell_open(isolate_thread, shell);

    while (!shell_is_disposed(isolate_thread, shell)) {
      if (!display_read_and_dispatch(isolate_thread, display)) {
        display_sleep(isolate_thread, display);
      }
    }

    printf("result: %d\n", result);

    ret = graal_tear_down_isolate(isolate_thread);
    if (ret != 0) {
        fprintf(stderr, "graal_tear_down_isolate: %d\n", ret);
        return 1;
    }

    return 0;
}
