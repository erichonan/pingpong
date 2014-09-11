//
//  Player.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize score;

-(Shot *)serve
{
    Shot *shot = [[Shot alloc] initWithSkill: self.skill];
    //NSLog(@"returning %@", shot.name);
    return shot;
}

-(BOOL) receiveShot: (Shot *)shot
{
    if (shot.index > 50) {
        NSLog(@"%@ returned the shot", self.playerName);
        return TRUE;
    }
/*
    BOOL returned = YES;
    switch(shot.type)
    {
        case @"flat":
            // calculate if shot returned
            break;
            
        case @"slice":
            // calculate if shot returned
            break;

        case @"topSpin":
            // calculate if shot returned
            break;
        default:
            
    }
    */
    
    //NSLog(@"not returning by default");
    NSLog(@"%@ was unable to return the ball", self.playerName);
    return FALSE;
}

-(Shot *) volley
{
    //NSLog(@"returning shot");
    Shot *shot = [[Shot alloc] initWithSkill: self.skill];

    //NSLog(@"returning %@", shot.name);
    
    return shot;
}

-(void)scorePoint
{
    NSLog(@"Point recorded!");
    score++;
}

@end
