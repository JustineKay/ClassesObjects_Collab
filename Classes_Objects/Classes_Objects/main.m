//
//  main.m
//  Classes_Objects
//
//  Created by Justine Gartner on 6/21/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Patron: NSObject
-(void)setName:(NSString*)s;
-(NSString*)name;
-(void)setPocket:(NSInteger)p;
-(NSInteger)pocket;
-(void)setPin:(NSInteger)n;
-(NSInteger)pin;
-(NSInteger)removeFromPocket:(NSInteger)amount;
-(void)addToPocket:(NSInteger)amount;

@end


@implementation Patron{
    NSString* name;
    NSInteger pocket;
    NSInteger pin;
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

-(void)setPin:(NSInteger)n {
    pin = n;
}

-(NSInteger)pin {
    return pin;
}

-(NSInteger)removeFromPocket:(NSInteger)amount{
    if (amount <= pocket){
        pocket -= amount;
        return amount;
    }else {
        NSLog(@"How MUCH? You don't have that much. You only have %ld.", pocket);
        return 0;
    }
    
}

-(void)addToPocket:(NSInteger)amount{
    pocket += amount;
}


@end

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


@interface BankAccount : NSObject
-(void)setBalance:(NSInteger)b;
- (NSInteger)balance;
-(void)setPin:(NSInteger)n;
-(void)setPin2:(NSInteger)n;
-(void)setPin3:(NSInteger)n;
-(void)deposit:(NSInteger)amount withPin:(NSInteger)p;
-(NSInteger)withdrawal:(NSInteger)amount withPin:(NSInteger)p;
-(void)stateBalance;

@end

@implementation BankAccount{
    NSInteger balance;
    NSInteger pin;
    NSInteger pin2;
    NSInteger pin3;
}

-(void)setBalance:(NSInteger)b {
    balance = b;
}

- (NSInteger)balance {
    return balance;
}

-(void)setPin:(NSInteger)n {
    pin = n;
}

-(void)setPin2:(NSInteger)n {
    pin2 = n;
}

-(void)setPin3:(NSInteger)n {
    pin3 = n;
}

-(void)deposit:(NSInteger)amount withPin:(NSInteger)p {
    if(p == pin || p == pin2 || p == pin3) {
        balance += amount;
        [self stateBalance];
    } else {
        NSLog(@"You do not have access to this account.");
    }
}

-(NSInteger)withdrawal:(NSInteger)amount withPin:(NSInteger)p {
    if(p == pin || p == pin2 || p == pin3) {
        if (amount<= balance){
            balance -= amount;
            [self stateBalance];
            return amount;
        }else {
            NSLog(@"How MUCH? You don't have that much.");
            [self stateBalance];
        }
    } else {
        NSLog(@"You do not have access to this account.");
    }
    return 0;
}

-(void)stateBalance{
    NSLog(@"Your balance is %ld.", balance);
}


@end
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patron *gloria = [[Patron alloc]init];
        
        [gloria setName:@"Gloria"];
        [gloria setPocket:500];
        [gloria setPin:1234];
        
        NSLog(@"%@ has $%ld in her pocket.\n", [gloria name], [gloria pocket]);
        
        
        Patron *jorge = [[Patron alloc] init];
        
        [jorge setName:@"Jorge"];
        [jorge setPocket:20];
        [jorge setPin:4321];
        
        BankAccount *jimenezShared = [[BankAccount alloc]init];
        
        [jimenezShared setBalance:2000];
        [jimenezShared setPin: 1234];
        [jimenezShared setPin2: 4321];
        
        NSLog(@"%@'s bank balance is $%ld.\n", [gloria name], [jimenezShared balance]);
        
        [jimenezShared deposit:50 withPin: 2222];
        [jimenezShared deposit:[gloria removeFromPocket:300] withPin:[gloria pin]];
        
        NSLog(@"%@'s bank balance is $%ld.\n", [gloria name], [jimenezShared balance]);
        NSLog(@"%@ has $%ld in her pocket.\n", [gloria name], [gloria pocket]);
        
        [jimenezShared deposit:[gloria removeFromPocket:600] withPin:[gloria pin]];
        [jimenezShared withdrawal:3000 withPin:[jorge pin]];
        
        
        
    }
    return 0;
}
