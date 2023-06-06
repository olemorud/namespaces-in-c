#!/bin/bash

requirements=("cmake" "gdb")

for cmd in $requirements; do
	if ! command -v gdb; then
		echo "gdb not found"
		exit 1
	fi
done

mkdir -p build 
(cd build
	rm * -rf 
	CC=clang cmake ..
	make -j2
)

gdb ./build/main -batch -ex 'disassemble main' > dump.asm
gdb ./build/main -batch -ex 'disassemble succ' 1>> dump.asm 2>/dev/null || true

