//
//  Card.m
//  Matchismo
//
//  Created by wdjwxh on 15/3/21.
//  Copyright (c) 2015年 wdjwxh. All rights reserved.
//

#import "Card.h"

@interface Card()

@end
@implementation Card

- (int) match:(NSArray *)otherCards{
    int score = 0;
    
    for (Card* card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}
@end
