//
//  Dice.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "Dice.h"

@implementation Dice


- (instancetype)init {
    
    self = [super init];
    if (self) {
        [self randomize];
    }
    return self;
}


- (void)randomize {
    
    self.value = arc4random_uniform(6) + 1;
    
}


@end
