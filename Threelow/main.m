//
//  main.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [[Dice alloc] initWithName:@"I"];
        //Dice *dice2 = [[Dice alloc] initWithName:@"II"];
        //Dice *dice3 = [[Dice alloc] initWithName:@"III"];
        //Dice *dice4 = [[Dice alloc] initWithName:@"IV"];
        //Dice *dice5 = [[Dice alloc] initWithName:@"V"];
        
        InputController *inputHandler = [[InputController alloc]init];
        [inputHandler displayGameMenu];
        NSMutableString *userChoice = [inputHandler receiveInput];
        
        while ([userChoice isEqualToString:@"roll"]) {
        
            [Dice roll:dice1];
            
            [inputHandler displayGameMenu];
            userChoice = [inputHandler receiveInput];
        
        }
        
        if ([userChoice isEqualToString:@"quit"]) {
        
            printf("\n\nGoodbye!\n");
        }
    }
    return 0;
}
