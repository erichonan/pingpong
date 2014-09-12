//
//  Game.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "Game.h"

@implementation Game

@synthesize gameInProgress, volleyInProgress, player1, player2, server, receiver, opponent, score, totalPoints;

-(void)beginWithPlayerA:(Player *)playerA andPlayerB:(Player *)playerB
{
    self.player1 = playerA;
    self.player2 = playerB;
    
    NSLog(@"Begin game");
    
    gameInProgress = true;
    
    //score = [[NSDictionary alloc] initWithObjectsAndKeys: player1, @0, player2, @0, nil];
    
    while (gameInProgress) {
        
        totalPoints = player1.score + player2.score;
        
        if(totalPoints%5 == 0)
        {
            NSLog(@"CHANGE SERVERS");
            [self setServers];
        }
        
        if(server == receiver)
        {
            NSLog(@"server == receiver - toggle server doesn't serve to himself");
            [self togglePlayer];
        }
        
        volleyInProgress = TRUE;
        Shot *shot = [server serve];
        opponent = server;
        
        NSLog(@"%@ serves the ball.", server.playerName);
        while (volleyInProgress) {
            
            //send shot to receiver here
            BOOL shotReturned = [self.receiver receiveShot:shot];   //opponent receives shot

            if (shotReturned) {                                     //pick return shot based on probabilities
                //NSLog(@"%@ returning shot!!", self.receiver.playerName);
                shot = [receiver volley];
                [self togglePlayer];      //toggle to receiving player
            }
            else                                                    //else turn ends and point awarded
            {
                volleyInProgress = false;
                [opponent scorePoint];
                NSLog(@"%@: %i, %@: %i", player1.playerName, player1.score, player2.playerName, player2.score);
            }
        }
        
        if (self.player1.score > 20 || self.player2.score > 20) {
            NSLog(@"Game over. Score was %@: %i to %@: %i", player1.playerName, player1.score, player2.playerName, player2.score);
            gameInProgress = FALSE;
        }
    }
}

-(void)endGame
{
    NSLog(@"Game over");
}

-(void)togglePlayer
{
    
    if(self.receiver == player1)
    {
        self.receiver = player2;
        self.opponent = player1;
    }
    else
    {
        self.receiver = player1;
        self.opponent = player2;
    }
}

-(Player *)setServers
{
/*    if(server)
    {
        //set server
    }
    else
    {
        //randomly select
    }
    server = player1;*/
    
    if(server == player1)
    {
        server = player2;
        self.receiver = player1;
    }
    else
    {
        server = player1;
        self.receiver = player2;
    }
    
    return server;
}
@end
