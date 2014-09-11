//
//  Skill.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "Skill.h"

@implementation Skill

-(Skill *)initWithSkillsReceiveFlat:(int)rFlat receiveSlice:(int)rSlice receiveTopSpin:(int)rTSpin receiveUnreturnable:(int)rUnreturn sendFlat:(int)sFlat sendSlice:(int)sSlice sendTopSpin:(int)sTSpin sendUnreturnable:(int)sUnreturn
{
    self = [super init];
    if (self)
    {
        self.receiveFlat = rFlat;
        self.receiveSlice = rSlice;
        self.receiveTopSpin = rTSpin;
        self.receiveUnreturnable = rUnreturn;
        self.sendFlat = sFlat;
        self.sendSlice = sSlice;
        self.sendTopSpin = sTSpin;
        self.sendUnreturnable = sUnreturn;
    }

    return self;
}

@end
