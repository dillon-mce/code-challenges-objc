//
//  DRMCodeChallenge.m
//  FizzBuzzObjc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMCodeChallenge.h"

@implementation DRMCodeChallenge

// 19.02.27
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

// 19.03.04
- (NSUInteger)numberOfVowels:(NSString *)string {
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    NSMutableArray *wordArray = [NSMutableArray arrayWithCapacity:string.length];
    for (int i = 0; i < string.length; i++) {
        NSString *letter = [[string substringWithRange:NSMakeRange(i, 1)] lowercaseString];
        wordArray[i] = letter;
    }
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF IN[c] %@", vowels];
    
    return [wordArray filteredArrayUsingPredicate:predicate].count;
}

// 19.03.06
- (BOOL)isPalindrome: (NSString *)string {
    NSMutableDictionary *letterDictionary = [NSMutableDictionary new];
    
    // Construct a dictionary of letter counts
    for (int i = 0; i < string.length; i++) {
        NSString *letter = [[string substringWithRange:NSMakeRange(i, 1)] lowercaseString];
        NSNumber *currentValue = letterDictionary[letter];
        if (currentValue) {
            int newValue = currentValue.intValue + 1;
            letterDictionary[letter] = [NSNumber numberWithInt: newValue];
        } else {
            letterDictionary[letter] = @1;
        }
    }
    
    // Count uneven values
    int unevenCount = 0;
    for (NSString *letter in letterDictionary) {
        NSNumber *count = letterDictionary[letter];
        if (!(count.intValue % 2 == 0)) {
            unevenCount += 1;
        }
    }
    
    return unevenCount < 2;
}

@end
