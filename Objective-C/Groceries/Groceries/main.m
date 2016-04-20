//
//  main.m
//  Groceries
//
//  Created by Alexey Efimov on 15.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Создание объектов
        NSString *chiken = @"Курица";
        NSString *milk = @"Молоко";
        NSString *egs = @"Яйца";
        NSString *bread = @"Хлеб";
        
        //Создание пустого массива
        NSMutableArray *todoList = [NSMutableArray array];
        
        //Добавление объектов в массив
        [todoList addObject:chiken];
        [todoList addObject:milk];
        [todoList addObject:egs];
        [todoList addObject:bread];
        
        //Вывод списка покупок на консоль
        NSLog(@"Список покупок:");
        for (NSString *d in todoList)
            NSLog(@"%@",d);
    }
    return 0;
}

