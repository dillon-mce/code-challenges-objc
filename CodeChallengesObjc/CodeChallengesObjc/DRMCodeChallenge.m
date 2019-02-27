//
//  DRMCodeChallenge.m
//  FizzBuzzObjc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMCodeChallenge.h"

@implementation DRMCodeChallenge

-(void)fizzBuzzUpTo: (NSInteger)limit {
    for (NSInteger i = 1; i < limit; i++) {
        BOOL threes = i % 3 == 0;
        BOOL fives = i % 5 == 0;
        
        if (threes && fives) {
            NSLog(@"FizzBuzz");
        } else if (threes) {
            NSLog(@"Fizz");
        } else if (fives) {
            NSLog(@"Buzz");
        } else {
            NSLog(@"%ld", (long)i);
        }
    }
}

@end
