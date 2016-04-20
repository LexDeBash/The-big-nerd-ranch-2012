//
//  Portfolio.m
//  Stocks
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Portfolio.h"

@implementation Portfolio

- (void)addAssetObject:(Portfolio *)a {
    if (!portfolio) {
        portfolio = [[NSMutableArray alloc] init];
    }
    [portfolio addObject:a];
}

- (float)portfolioPrise {
    float sum = 0;
    for (Portfolio *a in portfolio) {
        sum += [a valueInDollars];
    }
    return sum;
}

@end
