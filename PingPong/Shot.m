//
//  Shot.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "Shot.h"

@implementation Shot

-(Shot *)initWithSkill: (SkillSet *)playerSkill {
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

-(Shot *) getShot: (SkillSet *)playerSkill {
    
    int shotIndex = arc4random_uniform(100); //random number here
    //NSLog(@"shot index: %i", shotIndex);
    
    NSMutableArray *tempArray = [[NSMutableArray alloc] initWithArray:playerSkill.shotProbabilities];
    
    //sort shot probabilities from least to greatest
    NSDictionary *selectedSkill = [[NSDictionary alloc] init];
    for (int i = 0; i < [playerSkill.shotProbabilities count]; i++) {
        
        NSDictionary *currentSkill = [[NSDictionary alloc] initWithDictionary:[tempArray objectAtIndex:i]];
        int probability = [[currentSkill objectForKey:@"value"] integerValue];
        
        /* this part is very tricky. Need to figure out how to check against selected skill only after it has been set.
         I could use a flag but that seems lazy. That may be the only option. v*/
        if (shotIndex >= probability ) {
            if (probability < selectedSkill) {
                <#statements#>
            }
            selectedSkill = currentSkill;
        }
    }
    
    
    
    self.name = @"slice";
    self.type = @"slice_shot";
    self.index = shotIndex; //this is for debuggin only. Need to return actual shot.
    
    return self;
}

-(BOOL) returnWithSkill: (SkillSet *)playerSkill {
    
    int shotIndex = arc4random_uniform(100); //random number here
    BOOL result = FALSE;
    NSLog(@"Shot is: %@ with an index of %i", self.type, shotIndex);

    if ([self.type isEqualToString: @"flat_shot"]) {
        NSLog(@"probability of return: %i", playerSkill.receiveFlat);
        if (shotIndex <= playerSkill.receiveFlat) {
            NSLog(@"should return shot!");
            return TRUE;
        }
    }
    else if([self.type isEqualToString:@"slice_shot"])
    {
        NSLog(@"probability of return: %i", playerSkill.receiveSlice);
        if (shotIndex <= playerSkill.receiveSlice) {
            NSLog(@"should return shot!");
            result = TRUE;
        }
    }
    else if([self.type isEqualToString:@"topSpin_shot"])
    {
        NSLog(@"probability of return: %i", playerSkill.receiveTopSpin);
        if (shotIndex <= playerSkill.receiveTopSpin) {
            NSLog(@"should return shot!");
            result = TRUE;
        }
    }
    else if([self.type isEqualToString:@"unreturnable_shot"])
    {
        NSLog(@"probability of return: %i", playerSkill.receiveUnreturnable);
        if (shotIndex <= playerSkill.receiveTopSpin) {
            NSLog(@"should return shot!");
            result =  TRUE;
        }
    }
    
    NSLog(@"will return %d", result);
    return result;
}

@end
