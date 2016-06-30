//
//  InputController.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "InputController.h"

@implementation InputController


+ (NSMutableString*)receiveInput{
    
    char choice[255];
    fgets(choice, 255, stdin);
    
    NSString *choiceString = [NSString stringWithUTF8String:choice];
    return [[choiceString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]mutableCopy];
    
   
}




@end
