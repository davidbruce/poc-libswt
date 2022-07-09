import graal_isolate, libnativeimpl

var ret = 0
var isolate_thread: ptr Isolatethread

ret = create_isolate(nil, nil, addr(isolate_thread))
echo ret
var result = 0
result = add(isolate_thread, 2, 3)


# echo result
# char *result = NULL;
#     result = add(isolate_thread, "hello ", "world");
#     if (result == NULL) {
#         fprintf(stderr, "add() returned NULL\n");
#         return 1;
#     }
#     printf("result: %s\n", result);

#     ret = graal_tear_down_isolate(isolate_thread);
#     if (ret != 0) {
#         fprintf(stderr, "graal_tear_down_isolate: %d\n", ret);
#         return 1;
#     }

    # return 0;
