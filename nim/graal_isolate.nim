 {.deadCodeElim: on.}

##
##  These constants can be used for the pkey field in the
##  graal_create_isolate_params_t struct to either specify that the isolate is
##  not part of a protection domain or a new protection domain should be
##  created for it.
##
const
  NO_PROTECTION_DOMAIN* = 0
  NEW_PROTECTION_DOMAIN* = -1
  Graal_create_isolate_params_version = 1

type
  Graal_isolate_t {.importc: "__graal_isolate_t",
                      header: "graal_isolate.h", bycopy.} = ptr object
  Graal_isolatethread_t {.importc: "__graal_isolatethread_t",
                      header: "graal_isolate.h", bycopy.} = ptr object
  Graal_uword = culong
  Graal_create_isolate_params_t* {.importc: "__graal_create_isolate_params_t",
                                   header: "graal_isolate.h", bycopy.} = ptr object
    version* {.importc: "version".}: cint ##  Version of this struct
                                      ##  Fields introduced in version 1
    reserved_address_space_size* {.importc: "reserved_address_space_size".}: Graal_uword ##  Size of address space to reserve
                                                                                      ##  Fields introduced in version 2
    auxiliary_image_path* {.importc: "auxiliary_image_path".}: cstring ##  Path to an auxiliary image to load.
    auxiliary_image_reserved_space_size* {.
        importc: "auxiliary_image_reserved_space_size".}: Graal_uword ##  Reserved bytes for loading an auxiliary image.
                                                                    ##  Fields introduced in version 3
    reserved_1* {.importc: "_reserved_1".}: cint ##  Internal usage, do not use.
    reserved_2* {.importc: "_reserved_2".}: cstringArray ##  Internal usage, do not use.
    pkey* {.importc: "pkey".}: cint ##  Isolate protection key or domain.

  Isolate* = Graal_isolate_t
  IsolateThread* = Graal_isolatethread_t
  CreateIsolateParams* = Graal_create_isolate_params_t


##
##  Create a new isolate, considering the passed parameters (which may be NULL).
##  Returns 0 on success, or a non-zero value on failure.
##  On success, the current thread is attached to the created isolate, and the
##  address of the isolate and the isolate thread are written to the passed pointers
##  if they are not NULL.
##

proc create_isolate*(params: ptr CreateIsolateParams;
                          isolate: ptr ptr Isolate;
                          thread: ptr ptr IsolateThread): cint {.cdecl,
    importc: "graal_create_isolate", dynlib: "libswt.dylib".}
##
##  Attaches the current thread to the passed isolate.
##  On failure, returns a non-zero value. On success, writes the address of the
##  created isolate thread structure to the passed pointer and returns 0.
##  If the thread has already been attached, the call succeeds and also provides
##  the thread's isolate thread structure.
##

proc attach_thread*(isolate: ptr Isolate;
                         thread: ptr ptr IsolateThread): cint {.cdecl,
    importc: "graal_attach_thread", dynlib: "libswt.dylib".}
##
##  Given an isolate to which the current thread is attached, returns the address of
##  the thread's associated isolate thread structure.  If the current thread is not
##  attached to the passed isolate or if another error occurs, returns NULL.
##

proc get_current_thread*(isolate: ptr Isolate): ptr IsolateThread {.
    cdecl, importc: "graal_get_current_thread", dynlib: "libswt.dylib".}
##
##  Given an isolate thread structure, determines to which isolate it belongs and returns
##  the address of its isolate structure. If an error occurs, returns NULL instead.
##

proc get_isolate*(thread: ptr IsolateThread): ptr Isolate {.
    cdecl, importc: "graal_get_isolate", dynlib: "libswt.dylib".}
##
##  Detaches the passed isolate thread from its isolate and discards any state or
##  context that is associated with it. At the time of the call, no code may still
##  be executing in the isolate thread's context.
##  Returns 0 on success, or a non-zero value on failure.
##

proc detach_thread*(thread: ptr IsolateThread): cint {.cdecl,
    importc: "graal_detach_thread", dynlib: "libswt.dylib".}
##
##  Tears down the passed isolate, waiting for any attached threads to detach from
##  it, then discards the isolate's objects, threads, and any other state or context
##  that is associated with it.
##  Returns 0 on success, or a non-zero value on failure.
##

proc tear_down_isolate*(isolateThread: ptr IsolateThread): cint {.
    cdecl, importc: "graal_tear_down_isolate", dynlib: "libswt.dylib".}
##
##  In the isolate of the passed isolate thread, detach all those threads that were
##  externally started (not within Java, which includes the "main thread") and were
##  attached to the isolate afterwards. Afterwards, all threads that were started
##  within Java undergo a regular shutdown process, followed by the tear-down of the
##  entire isolate, which detaches the current thread and discards the objects,
##  threads, and any other state or context associated with the isolate.
##  None of the manually attached threads targeted by this function may be executing
##  Java code at the time when this function is called or at any point in the future
##  or this will cause entirely undefined (and likely fatal) behavior.
##  Returns 0 on success, or a non-zero value on (non-fatal) failure.
##

proc detach_all_threads_and_tear_down_isolate*(
    isolateThread: ptr IsolateThread): cint {.cdecl,
    importc: "graal_detach_all_threads_and_tear_down_isolate",
    dynlib: "libswt.dylib".}
