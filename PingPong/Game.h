//
//  Game.h
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property (strong, nonatomic) Player *player1;
@property (strong, nonatomic) Player *player2;
@property (strong, nonatomic) Player *server;
@property (strong, nonatomic) Player *receiver;
@property (strong, nonatomic) Player *opponent;
@property (strong, nonatomic) NSDictionary *score;
@property int totalPoints;
@property BOOL gameInProgress;
@property BOOL volleyInProgress;


-(void)beginWithPlayerA:(Player *)playerA andPlayerB:(Player *)playerB;
-(Player *)setServers;
-(void)endGame;

@end
