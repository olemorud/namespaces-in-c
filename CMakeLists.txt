
cmake_minimum_required(VERSION 3.13)

project(Namespaces)

add_executable(main
    module.c
    main.c)

target_compile_options(main
	PRIVATE
	-Werror -Wall -Wextra -O3 -g -std=c2x -flto)

target_link_options(main
	PRIVATE
	-flto -Wl,-O2)

target_compile_definitions(main
	PRIVATE
	-DNAMESPACES)
