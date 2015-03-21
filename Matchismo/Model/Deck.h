//
//  Deck.h
//  Matchismo
//
//  Created by wdjwxh on 15/3/21.
//  Copyright (c) 2015年 wdjwxh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card;
- (void) addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *) drawnRandomCard;
@end
