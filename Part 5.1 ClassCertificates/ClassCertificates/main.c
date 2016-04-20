//
//  main.c
//  ClassCertificates
//
//  Created by Alexey Efimov on 12.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

void congtatulateStudent (char *student, char *course, int numDay);

int main(int argc, const char * argv[]) {
    congtatulateStudent("Mark", "Cocoa", 5);
    congtatulateStudent("Bo", "Objective-C", 2);
    congtatulateStudent("Mike", "Python", 5);
    congtatulateStudent("Ted", "iOS", 5);
    return 0;
}

void congtatulateStudent (char *student, char *course, int numDay)
{
    printf("%s has done as much %s Programming as I could fit into %d day\n", student, course, numDay);
    
}