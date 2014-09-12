//
//  ViewController.m
//  PingPong
//
//  Created by Honan, Eric (NYC-DRF) on 9/11/14.
//  Copyright (c) 2014 Honan, Eric (NYC-DRF). All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "Game.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Player *player1 = [[Player alloc] init];
    SkillSet *bruceLeeSkill = [[SkillSet alloc] initWithSkillsReceiveFlat:80 receiveSlice:45 receiveTopSpin:75 receiveUnreturnable:0 sendFlat:47 sendSlice:25 sendTopSpin:25 sendUnreturnable:3];
    player1.skill = bruceLeeSkill;
    player1.playerName = @"Mr. McGruff";
    
    Player *player2 = [[Player alloc] init];
    SkillSet *vanDamSkill = [[SkillSet alloc] initWithSkillsReceiveFlat:90 receiveSlice:25 receiveTopSpin:85 receiveUnreturnable:0 sendFlat:70 sendSlice:10 sendTopSpin:15 sendUnreturnable:5];
    player2.skill = vanDamSkill;
    player2.playerName = @"Smokey Bear";
    
    Player *serenaWilliamson = [[Player alloc] init];
    SkillSet *williamsonSkills = [[SkillSet alloc] initWithSkillsReceiveFlat:65 receiveSlice:50 receiveTopSpin:85 receiveUnreturnable:0 sendFlat:10 sendSlice:20 sendTopSpin:66 sendUnreturnable:4];
    serenaWilliamson.skill = williamsonSkills;
    
    Game *game = [[Game alloc] init];
    [game beginWithPlayerA:player1 andPlayerB:player2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
