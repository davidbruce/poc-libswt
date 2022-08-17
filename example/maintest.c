#include <stdio.h>
#include <stdlib.h>
#include <libswt.h>
#include <string.h>


int callback(graal_isolatethread_t* isolate_thread, void* event) {
    void* button;
    button = event_widget(isolate_thread, event);
    // printf("Clicked me!");
    // char* text = button_get_text(isolate_thread, button);
 //   if (strcmp("Ya Clicked!", text)) {
//	button_set_text(isolate_thread, button, "Click me!");
    //} else {
	button_set_text(isolate_thread, button, "Ya Clicked!");
  //  }
    return 0;
}
int main(void) {
    int ret;
    graal_isolatethread_t *isolate_thread = NULL;

    ret = graal_create_isolate(NULL, NULL, &isolate_thread);
    if (ret != 0) {
        fprintf(stderr, "graal_create_isolate: %d\n", ret);
        return 1;
    }

    void* display;
    display = new_display(isolate_thread);

    void* shell;
    shell = new_shell_3(isolate_thread, display);
    /* shell_set_text(isolate_thread, shell, "Hello"); */

    void* button;
    button = new_button(isolate_thread, shell, 1);
    button_set_text(isolate_thread, button, "Click me!");

    void* listener;
    listener = create_listener(isolate_thread, &callback);
    widget_add_listener(isolate_thread, button, 13, listener);
    
    shell_set_text(isolate_thread, shell, "Hello!");
    void* rowLayout;
    rowLayout = new_rowlayout(isolate_thread);

    composite_set_layout(isolate_thread, shell, rowLayout);
    control_pack(isolate_thread, shell);
    shell_open(isolate_thread, shell);

    while (!widget_is_disposed(isolate_thread, shell)) {
      if (!display_read_and_dispatch(isolate_thread, display)) {
        display_sleep(isolate_thread, display);
      }
    }


    ret = graal_tear_down_isolate(isolate_thread);
    if (ret != 0) {
        fprintf(stderr, "graal_tear_down_isolate: %d\n", ret);
        return 1;
    }

    return 0;
}
