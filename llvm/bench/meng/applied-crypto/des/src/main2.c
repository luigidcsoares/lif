#include "../include/des.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    uint8_t in_key[32] = {51, 35,  85,  5,  110, 132, 156, 31,  225, 45, 14,
                          19, 138, 13,  31, 52,  143, 235, 4,   109, 27, 78,
                          90, 68,  119, 3,  147, 103, 42,  157, 54,  10};

    unsigned char in[8] = {0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xe7};

    unsigned char out[8] = {0};

    des_ctx dc;
    unsigned long work[2] = {0};

    // des_key(&dc,key);
    deskey(in_key, EN0);
    cpkey(dc.ek);
    scrunch(in, work);
    desfunc(dc.ek, work);
    unscrun(work, out);

    for (size_t i = 0; i < 8; i++) printf("%d ", out[i]);
    printf("\n");
}
