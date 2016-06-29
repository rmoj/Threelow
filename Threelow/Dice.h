//
//  Dice.h
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSString *name;
@property int value;


- (instancetype)initWithName:diceID;
- (id)randomize;
- (void) printValue;
+ (void) roll: (Dice*) die;

@end
