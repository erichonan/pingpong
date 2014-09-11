//
//  Shot.h
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Skill.h"

@class Skill;

@interface Shot : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *type;
@property int index;

-(Shot *)initWithSkill:(Skill *)skill;
-(Shot *) getShot:(Skill *) playerSkill;

@end
