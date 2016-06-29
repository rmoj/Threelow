//
//  Dice.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "Dice.h"

@implementation Dice


- (instancetype)initWithName:diceID {
    
    self = [super init];
    if (self) {
        _name = diceID;
        _value = 1;
    }
    return self;
}


- (id)randomize {
    
    
    self.value = arc4random_uniform(6) + 1;
    
    return self;
    
}

- (void) printValue {

    NSLog(@"Value of %@ is %d", self.name, self.value);

}

+ (void) roll: (Dice*) die {

     [[die randomize] printValue];

}

@end
