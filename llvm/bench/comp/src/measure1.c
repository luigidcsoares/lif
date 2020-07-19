#include "../include/comp.h"
#include <stdio.h>
#include <time.h>

#define NS_PER_SECOND 1000000000
uint64_t nanoseconds(struct timespec t) {
    return t.tv_sec * NS_PER_SECOND + t.tv_nsec;
}

// Dummy value used to warm up the cache.
volatile int dummy;

int main() {
    int a[N], b[N];
#pragma nounroll
    for (size_t i = 0; i < N; i++) a[i] = b[i] = i;
#pragma nounroll
    for (size_t i = 0; i < N; i++) {
        dummy = a[i];
        dummy = b[i];
    }

    struct timespec start, end;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    comp(a, b);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);

    uint64_t delta = nanoseconds(end) - nanoseconds(start);
    printf("%ld\n", delta);
    return 0;
}

