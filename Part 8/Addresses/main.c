//
//  main.c
//  Addresses
//
//  Created by Alexey Efimov on 13.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float i = 17.1234;
    float *addressOfI = &i;
    printf("An int is %zu bytes\n", sizeof(float));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    return 0;
}
