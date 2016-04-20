//
//  main.m
//  Stocks
//
//  Created by Alexey Efimov on 17.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        StockHolding *package1 = [[StockHolding alloc] init];
        StockHolding *package2 = [[StockHolding alloc] init];
        StockHolding *package3 = [[StockHolding alloc] init];
        
        [package1 parameters:2.30 :4.50 :40];
        [package2 parameters:12.19 :10.56 :90];
        [package3 parameters:45.10 :49.51 :210];
        
        
        Portfolio *myPortfolio = [[Portfolio alloc] init];
        
        [myPortfolio addPortfolioObject:package1];
        [myPortfolio addPortfolioObject:package2];
        [myPortfolio addPortfolioObject:package3];
        [myPortfolio portfolioValue];
        
        NSLog(@"Общая стоимость пакета акций в портфеле состовляет: $%.2f", [myPortfolio portfolioValue]);
        
    }
    return 0;
}