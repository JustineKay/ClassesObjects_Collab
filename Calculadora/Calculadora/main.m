//
//  main.m
//  Calculadora
//
//  Created by Justine Gartner on 6/21/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

-(CGFloat)add:(CGFloat)n;
-(CGFloat)subtract:(CGFloat)n;
-(CGFloat)multiply:(CGFloat)n;
-(CGFloat)divide:(CGFloat)n;

@property (nonatomic) CGFloat accumulator;

@end

@implementation Calculator {
    
    CGFloat total;
    CGFloat userEnteredNumber;
    
}

// Override default init method to begin with a total of 0;
-(id)init {
    if (self = [super init]) {
        _accumulator = 0;
    }
    return self;
}

-(CGFloat)add:(CGFloat)n {
    return _accumulator += n;
}

-(CGFloat)subtract:(CGFloat)n {
    return _accumulator -= n;
}

-(CGFloat)multiply:(CGFloat)n {
    return _accumulator *= n;
}

-(CGFloat)divide:(CGFloat)n {
    return _accumulator /= n;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // create an instance of Calculator
        Calculator *c = [Calculator new];
        
        // create a variable to hold total and add 5
        [c add:5];
        NSLog(@"%g\n", c.accumulator);
        
    }
    return 0;
}
