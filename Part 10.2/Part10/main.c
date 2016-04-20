//
//  main.c
//  Part10
//
//  Created by Alexey Efimov on 13.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>
#include <time.h>

//Определяем тип структуры для переменной tm
typedef struct {
    int tm_sec; // Секунды [0-60]
    int tm_min; // Минуты [0-59]
    int tm_hour; // Часы [0-23]
    int tm_mday; // День месяца [1-31]
    int tm_mon; // Месяц [0-11]
    int tm_year; // Год от 1900
    int tm_wday; // День недели с воскресенья [0-6]
    int tm_yday; // День года с 1 января [0-365]
    int tm_isdst; // Флаг летнего времени
    long tm_gmtoff; // Смещение в секундах от UTC
    char tm_zone; // Сокращение часового пояса
}tm;

int main(int argc, const char * argv[]) {
    long secondSince1970 = time (NULL);
    printf("It has been %ld second since 1970\n", secondSince1970);
    long secondSince1970v2 = secondSince1970 - (secondSince1970 - 4000000);
    
    tm now;
    tm now2;
    localtime_r(&secondSince1970, &now);
    localtime_r(&secondSince1970v2, &now2);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("Present day %d.%d.%d\n", now.tm_mday, now.tm_mon + 1, 1900 + now.tm_year);
    printf("4 миллиона секунд от 1 января 1970 года соответствет дате %d.%d.%d\n", now2.tm_mday, now2.tm_mon + 1, 1900 + now2.tm_year);
    return 0;
}
