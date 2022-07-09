import graal_isolate

proc run_main*(argc: cint; argv: cstringArray): cint {.importc: "run_main",
    header: "libnativeimpl.h".}
proc add*(a1: ptr IsolateThread; a2: cint;
                                       a3: cint): cint {.cdecl,
                                         importc: "Java_org_pkg_apinative_Native_add", header: "libnativeimpl.h" dynlib: "libnativeimpl.dylib" .}
proc vmLocatorSymbol*(thread: ptr IsolateThread) {.
    importc: "vmLocatorSymbol", header: "libnativeimpl.h".}
