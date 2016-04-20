//
//  Portfolio.h
//  Stocks
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "StockHolding.h"

@interface Portfolio : StockHolding {
    NSMutableArray *portfolio;
}

- (void)addAssetObject:(Portfolio *)a;
- (float)portfolioPrise;
@end
