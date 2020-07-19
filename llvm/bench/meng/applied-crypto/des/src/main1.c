#include "../include/des.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

static uint8_t in_key[32]  __attribute__((aligned(64)))= {
    21, 135, 185, 105, 110, 132, 146, 231, 225, 45, 146, 19, 138, 13, 31,
    42, 43, 135, 184, 109, 27, 69, 99, 68, 119, 3, 147, 103, 42, 162, 54, 8
};

static unsigned char in[8] __attribute__((aligned(64)))= {
    0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xe7
};

static unsigned char out[8] __attribute__((aligned(64))) = {0};

int main() {
    des_ctx dc;
    unsigned long work[2] = {0};

    //des_key(&dc,key);
    deskey(in_key, EN0);
    cpkey(dc.ek);
    scrunch(in, work);
    desfunc(dc.ek, work);
    unscrun(work,out);

    for (size_t i = 0; i < 8; i++)
        printf("%d ", out[i]);
    printf("\n");
}

