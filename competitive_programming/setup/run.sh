#!/bin/bash

set -e

if [ "$1" == "safe" ]
then
    g++ main.cpp -o main -DLOCAL -Wall -Wextra -pedantic -std=c++17 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector

    echo "starting..."
    ./main
else
    make -s
    echo "starting..."
    time ./main
fi
