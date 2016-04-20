//
//  main.m
//  Stocks
//
//  Created by Alexey Efimov on 17.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeingStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Опеределение курса валюты для экземпляра ForeingStockHolding
        
        ForeingStockHolding *current = [[ForeingStockHolding alloc] init];
        
        [current setConversionRate:0.015];
        float currentRUB = [current conversionRate];
        
        
        // Определение первого экземпляра StockHolding
        
        ForeingStockHolding *stockHolding = [[ForeingStockHolding alloc] init];
        
        [stockHolding setPurchaceSharePrice:230];
        [stockHolding setCurrentSharePrice:450];
        [stockHolding setNumberOfShares:40];
        [stockHolding setConversionRate:currentRUB];
        
        
        // Опеределение второго экземпляра StockHolding
        
        ForeingStockHolding *stockHolding2 = [[ForeingStockHolding alloc] init];
        
        [stockHolding2 setPurchaceSharePrice:1219];
        [stockHolding2 setCurrentSharePrice:1056];
        [stockHolding2 setNumberOfShares:90];
        [stockHolding2 setConversionRate:currentRUB];
        
        
        // Определение третьего экземпляра StockHolding
        
        ForeingStockHolding *stockHolding3 = [[ForeingStockHolding alloc] init];
        
        [stockHolding3 setPurchaceSharePrice:4510];
        [stockHolding3 setCurrentSharePrice:4951];
        [stockHolding3 setNumberOfShares:210];
        [stockHolding3 setConversionRate:currentRUB];
        
        // Создание пустого массива
        
        NSMutableArray *stockHoldingArray = [NSMutableArray array];
        
        // Включение данных в массив
        
        [stockHoldingArray addObject:stockHolding];
        [stockHoldingArray addObject:stockHolding2];
        [stockHoldingArray addObject:stockHolding3];
        
        // Перебор по данным массива
        NSLog(@"Conversation rate %f", currentRUB);
        
        int i = 1;
        
        for (ForeingStockHolding *sh in stockHoldingArray) {
            NSLog(@"stock %i purchase share price is %.2f rub (%.2f usd)", i, [sh purchaceSharePrice], [sh purchaceSharePrice] * [sh conversionRate]);
            NSLog(@"stock %i current share price is %.2f rub (%.2f usd)", i, [sh currentSharePrice], [sh currentSharePrice] * [sh conversionRate]);
            NSLog(@"stock %i number of share is %i", i, [sh numberOfShares]);
            NSLog(@"stock %i cost in dollars is %.2f", i, [sh costInDollars]);
            NSLog(@"stock %i value in dollars is %.2f", i, [sh valueInDollars]);
            i++;
        }
        
    }
    return 0;
}