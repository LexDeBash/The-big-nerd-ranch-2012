//
//  main.m
//  TimeAfterTime
//
//  Created by Alexey Efimov on 13.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"Текущая дата (время по гринвичу) %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"С 1 января 1970 года прошло %f секунд.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"Через 100 000 секунд от текущего момента будет: %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                        inUnit:NSCalendarUnitMonth
                                       forDate:now];
        NSLog(@"Сейчас %lu день месяца", day);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1980];
        [comps setMonth:11];
        [comps setDay:9];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsInMyLive = [now timeIntervalSinceDate:dateOfBirth];
        double minutesInMyLive = secondsInMyLive / 60;
        double hourInMyLive = minutesInMyLive / 60;
        double dayInMyLive = hourInMyLive / 24;
        float yearInMyLive = dayInMyLive / 365;
        
        NSLog(@"День моего рождения %@", dateOfBirth);
        NSLog(@"Продолжительность моей жизни в секундах состовляет %.0f", secondsInMyLive);
        NSLog(@"Продолжительность моей жизни в минутах состовляет %.0f", minutesInMyLive);
        NSLog(@"Продолжительность моей жизни в часах состовляет %.0f", hourInMyLive);
        NSLog(@"Продолжительность моей жизни в днях состовляет %.0f", dayInMyLive);
        NSLog(@"Продолжительность моей жизни в годах состовляет %.0f", yearInMyLive);
        
        //Программа, которая определяет, какое время (летнее или зимнее) действует в данный момент
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        NSLog(@"Часовой пояс в моем городе %@", timeZone);
        if ([timeZone isDaylightSavingTime] == YES)
            NSLog(@"В данный момент действует летнее время");
        else
            NSLog(@"В данный момент действует зимнее время");
    }
    return 0;
}
