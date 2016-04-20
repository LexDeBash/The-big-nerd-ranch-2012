//
//  ForeingStockHolding.m
//  Stocks
//
//  Created by Alexey Efimov on 18.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "ForeingStockHolding.h"

@implementation ForeingStockHolding

@synthesize conversionRate;

- (float)costInDollars {
    float localCost = [super costInDollars];
    return localCost * [self conversionRate];
}

- (float)valueInDollars {
    float localValue =  [super valueInDollars];
    return localValue * [self conversionRate];
}

@end

