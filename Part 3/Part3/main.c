//
//  main.c
//  Part3
//
//  Created by Alexey Efimov on 11.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // Объявление переменной 'weight' типа float
    float weight;
    
    //Сохрание числа в переменной
    weight = 14.2;
    
    //Вывод информации для пользователмя
    printf("The turkey weights %f.\n", weight);
    
    //Объявление другой переменной типа float
    float cookingTime;
    
    //Вычисление времени приготовления
    //В данном случае '*' означает умножение
    cookingTime = 15.0 + 15.0 * weight;
    
    //Вывод информации для пользователя
    printf("Cook it for %f minutes.\n", cookingTime);
    //Успешное завершение функции
return 0;
}
