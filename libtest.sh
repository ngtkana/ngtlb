#!/bin/sh
set -e
SCRIPT_DIR=$(dirname "$0")

ORIG_WD=$(pwd)
cd ${SCRIPT_DIR}

mkdir -p build
cd build
cmake ..
make
make test -j10

cd ${ORIG_WD}
