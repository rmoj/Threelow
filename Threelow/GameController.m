//
//  GameController.m
//  Threelow
//
//  Created by Rene Mojica on 2016-06-29.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#import "InputController.h"

@implementation GameController


- (instancetype)initWithProperties {
    self = [super init];
    if (self) {
        
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [[Dice alloc]init];
        Dice *dice3 = [[Dice alloc]init];
        Dice *dice4 = [[Dice alloc]init];
        Dice *dice5 = [[Dice alloc]init];
        
        NSMutableArray *somediceArray = [[NSMutableArray alloc]init];
        [somediceArray addObject:dice1];
        [somediceArray addObject:dice2];
        [somediceArray addObject:dice3];
        [somediceArray addObject:dice4];
        [somediceArray addObject:dice5];
        
        NSMutableSet* heldDice = [NSMutableSet setWithCapacity:5];
        
        _diceArray = somediceArray;
        _helddiceSet = heldDice;
    }
    return self;
}


- (void)displayGameMenu{
    
    printf("\nWhat do you want to do?\n\n");
    printf("roll\n");
    printf("hold\n");
    printf("unhold\n");
    printf("reset\n");
    printf("quit\n");
    printf("\nEnter choice: ");
    
}


-(void) printdieValue:(int)index die:(Dice*)die {

    char *equivValue;
    
    switch (die.value) {
        case 1:
            equivValue = "I";
            break;
        case 2:
            equivValue = "II";
            break;
        case 3:
            equivValue = "III";
            break;
        case 4:
            equivValue = "IV";
            break;
        case 5:
            equivValue = "V";
        case 6:
            equivValue = "VI";
            break;
        default:
            break;
    }

    if(!([self checkifHeld:die])){
        printf("%d\t%s\t > %d\n",index,equivValue,die.value);
    } else {
        printf("%d\t[%s]\t > %d\n",index,equivValue,die.value);
    }
    
}

- (void) printValues {
    
    for (int i=0; i<5; i++) {
        [self printdieValue:i die:self.diceArray[i]];
    }
    int score = [self computeScore];
    printf("\nSCORE: %d", score);
    printf("\n");
}


-(void)holdDie {
    
    printf("\nEnter index of die you want to hold\n");
    printf("Press q to go back to menu\n");
    NSMutableString *strIndex = [InputController receiveInput];
    
    while (!([strIndex isEqualToString:@"q"])) {
        
        if([strIndex isEqualToString:@"0"]) {
            [self.helddiceSet addObject:self.diceArray[0]];
        }
        if([strIndex isEqualToString:@"1"]) {
            [self.helddiceSet addObject:self.diceArray[1]];
        }
        if([strIndex isEqualToString:@"2"]) {
            [self.helddiceSet addObject:self.diceArray[2]];
        }
        if([strIndex isEqualToString:@"3"]) {
            [self.helddiceSet addObject:self.diceArray[3]];
        }
        if([strIndex isEqualToString:@"4"]) {
            [self.helddiceSet addObject:self.diceArray[4]];
        }
        strIndex = [InputController receiveInput];
    }
    
}



-(void)rollDie {
    int i;
    for (i=0; i <5; i++) {
        
        if(!([self checkifHeld:self.diceArray[i]])){
            [self.diceArray[i] randomize];
        }
    }
    
    [self printValues];
    
}

- (BOOL)checkifHeld:(Dice*) die {
    
    if ([self.helddiceSet containsObject:die]) {
        return true;
    } else {
        return false;
    }
}

-(void)unholdDie {
    
    printf("\nEnter index of die you want to unhold\n");
    printf("Press q to go back to menu\n");
    NSMutableString *strIndex = [InputController receiveInput];
    
    while (!([strIndex isEqualToString:@"q"])) {
        
        if([strIndex isEqualToString:@"0"]) {
            [self.helddiceSet removeObject:self.diceArray[0]];
        }
        if([strIndex isEqualToString:@"1"]) {
            [self.helddiceSet removeObject:self.diceArray[1]];
        }
        if([strIndex isEqualToString:@"2"]) {
            [self.helddiceSet removeObject:self.diceArray[2]];
        }
        if([strIndex isEqualToString:@"3"]) {
            [self.helddiceSet removeObject:self.diceArray[3]];
        }
        if([strIndex isEqualToString:@"4"]) {
            [self.helddiceSet removeObject:self.diceArray[4]];
        }
        strIndex = [InputController receiveInput];
    }
    
}

- (void)resetDice {
    
    [self.helddiceSet removeAllObjects];
    
}


- (int)computeScore {
    int score = 0;
    Dice* die;
    
    for (int i=0;i<5;i++) {
        die = self.diceArray[i];
        if (die.value != 3 ){
            score = score + die.value;
        }
    }

    return score;
}


@end
