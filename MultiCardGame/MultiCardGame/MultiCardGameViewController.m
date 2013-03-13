//
//  MultiCardGameViewController.m
//  MultiCardGame
//
//  Created by Akinbiyi Lalude on 3/12/13.
//  Copyright (c) 2013 Akinbiyi Lalude. All rights reserved.
//

#import "MultiCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface MultiCardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
//An array of the cards on screen
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;
@end

@implementation MultiCardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (UIButton *cardButtons in cardButtons)
    {
        Card *card = [self.deck drawRandomCard];
        [cardButtons setTitle:card.contents forState:UIControlStateSelected];
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;   
    self.flipCount++;
}


@end
