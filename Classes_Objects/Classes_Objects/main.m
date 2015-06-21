//
//  main.m
//  Classes_Objects
//
//  Created by Justine Gartner on 6/21/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Patron: NSObject


@end


@implementation Patron{
    NSString* name;
    NSInteger pocket;
}

-(void)setName:(NSString*)s {
    name = s;
}
- (NSString*)name {
    return name;
}

-(void)setPocket:(NSInteger)p {
    pocket = p;
}
- (NSInteger)pocket {
    return pocket;
}



@end

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


@interface BankAccount : NSObject




@end

@implementation BankAccount{
    NSInteger balance;
}

-(void)setBalance:(NSInteger)b {
    balance = b;
}
- (NSInteger)balance {
    return balance;
}


@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patron *gloria = [[Patron alloc]init];
        
        [gloria setName:@"Gloria"];
        
        [gloria setPocket:500];
        
        NSLog(@"%@ has $%ld in her pocket.\n", [gloria name], [gloria pocket]);
        
        
        BankAccount *gloriaSavings = [[BankAccount alloc]init];
        
        [gloriaSavings setBalance:2000];
        
        
        
    }
    return 0;
}
