#!/bin/bash -e

BUILD_LOG="$PWD/travis.log"

{
    cd "$1" || exit 1
    make || exit 1
    (ctest || ctest -V --rerun-failed) 
} > "$BUILD_LOG"
