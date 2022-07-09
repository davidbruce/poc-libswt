#!/usr/bin/env bash

zig cc -I../headers -L../headers -lnativeimpl maintest.c -o ../out/maintest
