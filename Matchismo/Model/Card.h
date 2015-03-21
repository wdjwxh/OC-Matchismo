//
//  Card.h
//  Matchismo
//
//  Created by wdjwxh on 15/3/21.
//  Copyright (c) 2015年 wdjwxh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosed) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;
@end
