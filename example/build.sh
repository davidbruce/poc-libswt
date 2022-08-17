#!/usr/bin/env bash

# zig cc -I../headers -L../headers -lnativeimpl maintest.c -o ../out/maintest
zig cc -I../headers -L../headers -lswt maintest.c -o ../out/maintest
# zig cc -I../nativeimpl -L../nativeimpl -lswt maintest.c -o ../out/maintest
