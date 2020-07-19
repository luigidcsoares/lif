#include "../include/loki91.h"
#include <stdlib.h>
#include <stdio.h>

static unsigned char key[8]  = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xe7};
static unsigned char data[24] = {234, 14, 117, 90,  92, 46,  130, 16,
                                 36,  42, 8,   231, 7,  143, 127, 137,
                                 56,  94, 176, 148, 35, 85,  81,  130};

int main(void) {
        loki_ctx lc;
        setlokikey(key, &lc);
        enloki(&lc, data);
        for (size_t i = 0; i < 24; i++) printf("%d ", data[i]);
        printf("\n");
        return 0;
}
