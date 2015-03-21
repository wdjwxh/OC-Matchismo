//
//  PlayingCard.h
//  Matchismo
//
//  Created by wdjwxh on 15/3/21.
//  Copyright (c) 2015年 wdjwxh. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic)NSString *suit;
@property (nonatomic)NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;
@end
