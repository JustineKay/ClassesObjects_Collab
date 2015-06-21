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
-(CGFloat)changeSign;
-(CGFloat)reciprocal;
-(CGFloat)squared;
-(CGFloat)clear;
-(void)memoryStore;
-(void)memoryRecall;


@property (nonatomic) CGFloat accumulator;

@end

@implementation Calculator {
    CGFloat memory;
}

// Override default init method to begin with a total of 0;
-(id)init {
    if (self = [super init]) {
        _accumulator = 0;
    }
    return self;
}

-(CGFloat)add:(CGFloat)n {
    _accumulator += n;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)subtract:(CGFloat)n {
    _accumulator -= n;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)multiply:(CGFloat)n {
    _accumulator *= n;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)divide:(CGFloat)n {
    _accumulator /= n;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)changeSign{
    _accumulator = -_accumulator;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)reciprocal{
    _accumulator = 1 / _accumulator;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)squared{
    _accumulator *= _accumulator;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(CGFloat)clear{
    _accumulator = 0;
    NSLog(@"%g\n", _accumulator);
    return _accumulator;
}

-(void)memoryStore{
    memory = _accumulator;
    NSLog(@"Number %g has been stored in memory", memory);
}

-(void)memoryRecall{
    _accumulator = memory;
    NSLog(@"%g\n", _accumulator);
}

-(void)memoryClear{
    memory = 0;
    NSLog(@"Memory cleared");
}

@end





int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // create an instance of Calculator
        Calculator *c = [Calculator new];
        
        // create a variable to hold total and add 5
        [c add:5];

        [c subtract:3];
        
        [c multiply:3.5];
        
        [c divide:2];
        
        [c changeSign];
        
        [c changeSign];
        
        [c reciprocal];
        
        [c squared];
        
        [c clear];
        
        [c add:15];
        
        [c memoryStore];
        
        [c clear];
        
        [c memoryRecall];
        
        [c multiply: 3];
        
        [c squared];
        
        [c memoryStore];
        
        [c memoryClear];
        
        [c memoryRecall];
        
    }
    return 0;
}
