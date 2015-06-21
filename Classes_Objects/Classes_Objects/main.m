//
//  main.m
//  Classes_Objects
//
//  Created by Justine Gartner on 6/21/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface bankAccount : NSObject

- (void) showBalance: (NSInteger)bal;


@end

@implementation bankAccount{
    NSInteger balance;
}

-(void) showBalance{
    NSLog(@"Your balance is %d", balance);
}

@end

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
    }
    return 0;
}
