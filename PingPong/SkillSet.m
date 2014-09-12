//
//  Skill.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "SkillSet.h"

@implementation SkillSet

@synthesize shotProbabilities;

-(SkillSet *)initWithSkillsReceiveFlat:(int)rFlat receiveSlice:(int)rSlice receiveTopSpin:(int)rTSpin receiveUnreturnable:(int)rUnreturn sendFlat:(int)sFlat sendSlice:(int)sSlice sendTopSpin:(int)sTSpin sendUnreturnable:(int)sUnreturn
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
        
        NSDictionary *flatShot = [[NSDictionary alloc] initWithObjectsAndKeys:@"flat_shot", @"shot_type", sFlat, @"value", nil];
        NSDictionary *sliceShot = [[NSDictionary alloc] initWithObjectsAndKeys:@"slice_shot", @"shot_type", sSlice, @"value", nil];
        NSDictionary *topSpinShot = [[NSDictionary alloc] initWithObjectsAndKeys:@"top_spin_shot", @"shot_type", sTSpin, @"value", nil];
        NSDictionary *unreturnableShot = [[NSDictionary alloc] initWithObjectsAndKeys:@"unreturnable_shot", @"shot_type", sUnreturn, @"value", nil];
        
        
        shotProbabilities = [[NSArray alloc] initWithObjects: flatShot, sliceShot, topSpinShot, unreturnableShot, nil];
    }

    return self;
}

@end
