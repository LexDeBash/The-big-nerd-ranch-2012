//
//  main.m
//  DateList
//
//  Created by Alexey Efimov on 15.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Создание трех объектов NSDate
        NSDate *now = [NSDate date];
        NSDate *tommorow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Создание массива, содержащего все три объекта
        // nil - признак конца списка
        NSArray *dateList = [NSArray arrayWithObjects:now, tommorow, yesterday, nil];
        
        //Сколько объектов содержит список?
        NSLog(@"There are %lu dates", [dateList count]);
        
        //Вывод содержимого пары объектов
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        //Перебор масива и вывод всех элементов массива
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
    }
    return 0;
}
