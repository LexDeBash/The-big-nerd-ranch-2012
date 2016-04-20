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
        
        //Создание пустого массива
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Включение объектов в массив
        [dateList addObject:now];
        [dateList addObject:tommorow];
        
        //Объект yesterday помещается в начало списка
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList)
            NSLog(@"Все даты массива с указателем dateList: %@", d);
        
        //Удаление yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first day is: %@", [dateList objectAtIndex:0]);
        
    }
    return 0;
}
