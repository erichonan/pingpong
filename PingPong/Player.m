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
    BOOL reception = [shot returnWithSkill: self.skill];
    
    //NSLog(@"not returning by default");
    return reception;
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
