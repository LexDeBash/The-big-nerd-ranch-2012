//
//  StockHolding.h
//  Stocks
//
//  Created by Alexey Efimov on 17.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

@property float purchaceSharePrice, currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;
- (StockHolding *)parameters :(float)purchacedPrice :(float)currentPrice :(int)numberShares;

@end
