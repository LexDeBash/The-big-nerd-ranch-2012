//
//  main.c
//  Part4
//
//  Created by Alexey Efimov on 11.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10 : 5;
    
    if (5 < k)
        printf("Первое выражение верно. \n");
    else if (j > i)
        printf("Второе выражение верно. \n");
    else
        printf("Ни какое выражение не верно. \n");
    
    return 0;
}
