//
//  StockHolding.h
//  Stocks
//
//  Created by Alexey Efimov on 17.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

{
    float purchaceSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaceSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
