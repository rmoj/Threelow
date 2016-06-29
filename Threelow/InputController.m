//
//  InputController.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "InputController.h"

@implementation InputController



- (void)displayMainMenu{

    printf("Do you want to play? (Y/N)");

}

- (void)displayGameMenu{

    printf("\nWhat do you want to do?\n\n") ;
    printf("roll\n");
    printf("quit\n");
    printf("\nEnter choice: ");

}

- (NSMutableString*)receiveInput{
    
    char choice[255];
    fgets(choice, 255, stdin);
    
    NSString *choiceString = [NSString stringWithUTF8String:choice];
    return [[choiceString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]mutableCopy];
    
   
}



@end
