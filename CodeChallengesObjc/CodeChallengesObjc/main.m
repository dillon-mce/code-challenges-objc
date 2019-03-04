//
//  main.m
//  CodeChallengesObjc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DRMCodeChallenge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DRMCodeChallenge *codeChallenge = [[DRMCodeChallenge alloc] init];
        
        NSUInteger vowels = [codeChallenge numberOfVowels:@"HELLO WORLD!"];
        
        NSLog(@"\nThat string had %lu vowels", (unsigned long)vowels);
        
    }
    return 0;
}
