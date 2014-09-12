//
//  Skill.h
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shot.h"

@interface SkillSet : NSObject

@property (strong, nonatomic) NSArray *shotProbabilities;
@property (strong, nonatomic) NSDictionary *returnability;

@property int receiveFlat;
@property int receiveSlice;
@property int receiveTopSpin;
@property int receiveUnreturnable;

@property int sendFlat;
@property int sendSlice;
@property int sendTopSpin;
@property int sendUnreturnable;

/*-(Skill *)initWithDefaults;
-(Skill *)initWithJSON:JSON;*/
-(SkillSet *)initWithSkillsReceiveFlat:(int)rFlat
                       receiveSlice:(int)rSlice
                     receiveTopSpin:(int)rTSpin
                receiveUnreturnable:(int)rUnreturn
                           sendFlat:(int)sFlat
                          sendSlice:(int)sSlice
                        sendTopSpin:(int)sTSpin
                   sendUnreturnable:(int)sUnreturn;
@end
