
CC ?= clang

# compiler specific flags
CFLAGS.gcc := 
CFLAGS.clang := 

# general flags
CFLAGS := \
	-Wall -Wextra -Werror -Wpedantic \
	-O3 -g -flto \
	-std=c2x \
	${CFLAGS.${CC}} \
	-DNAMESPACES \

LDFLAGS := \
	-flto \
	-Wl,-O3

dump.asm : test
	gdb $< -batch -ex 'disassemble main' > $@
	(gdb $< -batch -ex 'disassemble succ' >> $@) || true

test : main.o module.o
	$(CC) $(CFLAGS) -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $^

