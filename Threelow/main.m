//
//  main.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        //NSLog(@"dice 1 is %d",dice1.value);
        //[diceArray[1] printValue];
        
        GameController * gControl = [[GameController alloc] initWithProperties];
        
        [gControl displayGameMenu];
        
        NSMutableString *userChoice = [InputController receiveInput];
        
        while (!([userChoice isEqualToString:@"quit"])) {
        
            if ([userChoice isEqualToString:@"roll"]) {
                
                [gControl rollDie];
            
            }
            
            if ([userChoice isEqualToString:@"hold"]) {
            
                printf("You chose to hold");
                
                [gControl holdDie];
                [gControl printValues];
                
            }
            
            if ([userChoice isEqualToString:@"unhold"]) {
                [gControl unholdDie];
                [gControl printValues];
            }
            
            if ([userChoice isEqualToString:@"reset"]) {
                [gControl resetDice];
                [gControl printValues];
            }
            
            if ([userChoice isEqualToString:@"score"]) {
                [gControl displayScore];
            }
            
            [gControl displayGameMenu];
            userChoice = [InputController receiveInput];
            
        }
        
        printf("\n\nGoodbye!\n");
        
    }
    return 0;
}
