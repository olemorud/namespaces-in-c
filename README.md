
# Namespaces in C

In C you can create pseudo-namespaces by abusing structs of function
pointers, making function calls look like `module.func(x)` instead of
`func(x)`.

A lot of people online spout that this creates overhead, but this should
show that clang>=15.0.7 will still inline such function calls. GCC 11.3.1
is unable  to inline the function, but will still call the function
directly.

## Build
```sh
./build.sh
```

## Verify code
```
./build/main
```

## Check disassembly
```
less dump.asm
```
