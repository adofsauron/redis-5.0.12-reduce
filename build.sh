#!/bin/bash

cd redis-5.0.12

chmod +x src/mkreleasehdr.sh
chmod +x runtest*
chmod +x deps/update-jemalloc.sh
chmod +x deps/jemalloc/*

make clean

make -j "$(nproc)" MALLOC=libc redis-server
make -j "$(nproc)" MALLOC=libc redis-cli

cd -
