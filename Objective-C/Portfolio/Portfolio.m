//
//  Portfolio.m
//  Stocks
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Portfolio.h"

@implementation Portfolio

- (void)addPortfolioObject:(Portfolio *)sh {
    if (!portfolio) {
        portfolio = [[NSMutableArray alloc] init];
    }
    [portfolio addObject:sh];
}

- (float)portfolioValue {
    float sum = 0;
    for (Portfolio *sh in portfolio) {
        sum += [sh valueInDollars];
    }
    return sum;
}

@end
