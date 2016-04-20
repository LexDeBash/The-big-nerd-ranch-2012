//
//  main.c
//  TwoFloats
//
//  Created by Alexey Efimov on 11.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // Объявление первой переменной типа float
    float numberOne = 3.14;
    
    // Объявление второй переменной типа float
    float numberTwo = 42.0;
    
    // Объявление переменной типа double
    double result;
    
    //Вычисление значения переменной result
    result = numberOne + numberTwo;
    
    // Вывод результата пользователю
    printf("Сумма двух первых переменных равна %f\n", result);
    
    return 0;
}
