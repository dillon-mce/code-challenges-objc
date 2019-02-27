//
//  main.m
//  FizzBuzzObjc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DRMCodeChallenge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DRMCodeChallenge *codeChallenge = [[DRMCodeChallenge alloc] init];
        
        [codeChallenge fizzBuzzUpTo:100];
        
    }
    return 0;
    

    
}


