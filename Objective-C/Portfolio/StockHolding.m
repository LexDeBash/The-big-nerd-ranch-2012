//
//  StockHolding.m
//  Stocks
//
//  Created by Alexey Efimov on 17.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaceSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars {
    return [self purchaceSharePrice] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

- (StockHolding *)parameters:(float)purchacedPrice :(float)currentPrice :(int)numberShares {
    
    [self setPurchaceSharePrice:purchacedPrice];
    [self setCurrentSharePrice:currentPrice];
    [self setNumberOfShares:numberShares];
    
    return self;
}

@end
