//
//  main.c
//  BeerSong
//
//  Created by Alexey Efimov on 12.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no mor btlles of beer on the wall.\n");
    }
    else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("take one down, pass it around, %d bottles of beer on the wall. \n", oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in the recyclyng, %d empy bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singTheSong(99);
    return 0;
}
