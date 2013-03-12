//
//  MultiCardGameViewController.m
//  MultiCardGame
//
//  Created by Akinbiyi Lalude on 3/12/13.
//  Copyright (c) 2013 Akinbiyi Lalude. All rights reserved.
//

#import "MultiCardGameViewController.h"

@interface MultiCardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation MultiCardGameViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    // *** this needs to be a new random card each click
    // *** leverage -- UIButton - setTitle:forState
    // *** xxx
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    //    if (sender.isSelected)
    //    {
    //        sender.selected = NO;
    //        else
    //        {
    //            sender.selected = YES;
    //        }
    //
    //    }
    
    sender.selected = !sender.isSelected;
    
    //    self.flipCount = self.flipCount + 1;
    
    self.flipCount++;
}


@end
