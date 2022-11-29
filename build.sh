#!/usr/bin/bash

set -euo pipefail

echo "Cleaning objdir ..."
rm -rf objdir
mkdir objdir


echo "Building main.o ..."
g++ -c src/main.cpp -o objdir/main.o

echo "Generating explicit instantiations ..."
cp src/lib.cpp objdir/lib.cpp
nm -C --undefined-only objdir/main.o \
    | grep Bla \
    | cut -d 'U' -f 2 \
    | cut -c 2- \
    | while read symbol
do
    echo "Found symbol: $symbol"
    echo "template int $symbol;" >> objdir/lib.cpp
done

echo "Building lib.o ..."
g++ -c objdir/lib.cpp -o objdir/lib.o -Isrc

echo "Building main ..."
g++ objdir/main.o objdir/lib.o -o objdir/main

echo "Success !!!"
