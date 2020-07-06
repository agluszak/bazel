#include <cstdio>

void test() {
#ifndef FLAG
    printf("test1\n");
#else
    printf("test3\n");
#endif
}