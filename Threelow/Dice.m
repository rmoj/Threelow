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
    
    int random = arc4random_uniform(6) + 1;
    
    switch (random) {
        case 1:
            self.value = "I";
            break;
        case 2:
            self.value = "II";
            break;
        case 3:
            self.value = "III";
            break;
        case 4:
            self.value = "IV";
            break;
        case 5:
            self.value = "V";
        case 6:
            self.value = "VI";
            break;
        default:
            break;
    }
    
}


@end
