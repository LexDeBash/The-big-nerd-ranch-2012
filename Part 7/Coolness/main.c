//
//  main.c
//  Coolness
//
//  Created by Alexey Efimov on 12.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    for (int i = 99; i >= 0; i-=3) {
        if (i % 5 == 0)
            printf("%d\nFound one!\n", i);
        else
            printf("%d\n", i);
    }
    return 0;
}
