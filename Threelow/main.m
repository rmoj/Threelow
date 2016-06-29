//
//  main.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [[Dice alloc] initWithName:@"dice 1"];
        Dice *dice2 = [[Dice alloc] initWithName:@"dice 2"];
        Dice *dice3 = [[Dice alloc] initWithName:@"dice 3"];
        Dice *dice4 = [[Dice alloc] initWithName:@"dice 4"];
        Dice *dice5 = [[Dice alloc] initWithName:@"dice 5"];
        
        [dice1 printValue];
        [dice2 printValue];
        [dice3 printValue];
        [dice4 printValue];
        [dice5 printValue];
        
        NSLog(@"\nRandomized Values:\n");
        
        [[dice1 randomize] printValue];
        [[dice2 randomize] printValue];
        [[dice3 randomize] printValue];
        [[dice4 randomize] printValue];
        [[dice5 randomize] printValue];
        
    }
    return 0;
}
