//
//  Shot.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "Shot.h"

@implementation Shot

-(Shot *)initWithSkill: (Skill *)playerSkill {
    self = [super init];
    if (self) {
        [self getShot:playerSkill];
    }
    
    /* The shot returned must be one of these:
            Slice
            Flat
            TopSpin
            Unreturnable
     
     */
    
    return self;
}

-(Shot *) getShot: (Skill *)playerSkill {
    
    int shotIndex = arc4random_uniform(100) ;//random number here
    //NSLog(@"shot index: %i", shotIndex);
    
    self.name = @"slice";
    self.type = @"slice_shot";
    self.index = shotIndex; //this is for debuggin only. Need to return actual shot.
    
    return self;
}

@end
