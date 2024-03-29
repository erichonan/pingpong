//
//  Player.h
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SkillSet.h"
#import "Shot.h"

@class SkillSet;
@class Shot;

@interface Player : NSObject

@property (strong, nonatomic) NSString *playerName;
@property (strong, nonatomic) SkillSet *skill;
@property int score;

-(Shot *)serve;
-(void)scorePoint;
-(BOOL)receiveShot:(Shot *) shot;
-(Shot *)volley;

@end
