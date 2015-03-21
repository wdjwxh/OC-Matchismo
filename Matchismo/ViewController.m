//
//  ViewController.m
//  Matchismo
//
//  Created by wdjwxh on 15/3/21.
//  Copyright (c) 2015年 wdjwxh. All rights reserved.
//

#import "ViewController.h"
#import "Model/PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;

@end

@implementation ViewController

- (PlayingCardDeck *)deck{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
   
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
        Card *randomCard = [self.deck drawnRandomCard];
        NSString * title = [[NSString alloc] init];
        if (randomCard) {
            title = randomCard.contents;
        }else {
            title = @"end";
        }
        [sender setTitle:title forState:UIControlStateNormal];
        
        
    }
    self.flipCount++;
}

@end
