//
//  GameController.h
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject


@property NSMutableArray* diceArray;
@property NSMutableSet* helddiceSet;


- (instancetype)initWithProperties;
- (void)displayGameMenu;
- (void)rollDie;
- (id) printdieValue:(int)index die:(Dice*)die ;
- (void) printValues;
- (void)holdDie;
- (void)unholdDie;
- (void)resetDice;
- (BOOL)checkifHeld:(Dice*) die;
- (int)computeScore;





@end
