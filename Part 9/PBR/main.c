//
//  main.c
//  PBR
//
//  Created by Alexey Efimov on 13.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr) {
    //Радиус сохраняется по переданному адресу
    *rPtr = sqrt(x * x + y * y);
    // Вычисление theta;
    float theta;
    if (x == 0) {
        if (y == 0)
            theta = 0.0; // формально неопределенное значение
        else if (y > 0)
            theta = M_PI_2;
        else
            theta = -M_PI_2;
    }
    else
        theta = atan(y / x);
    // значение theta сохраняется по переданному значению
    *thetaPtr = theta;
}

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //Адрес integerPart передается в аргументе
    fractionPart = modf(pi, &integerPart);
    //Определение значения, хранященося в integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians. %.2f)\n", x, y, radius, angle);
    
    return 0;
}
