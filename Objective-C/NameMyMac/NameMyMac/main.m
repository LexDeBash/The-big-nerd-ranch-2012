//
//  main.m
//  NameMyMac
//
//  Created by Alexey Efimov on 14.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *myMac = [NSHost currentHost];
        NSString *nameMyMac = [myMac localizedName];
        NSLog(@"The name my Mac is %@", nameMyMac);
    }
    return 0;
}
