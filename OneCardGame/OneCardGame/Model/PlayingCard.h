//
//  PlayingCard.h
//  OneCardGame
//
//  Created by Akinbiyi Lalude on 3/12/13.
//  Copyright (c) 2013 Akinbiyi Lalude. All rights reserved.
//

//
// Coded in
// CS193 Winter 2013
// Lecture 2
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
//
//*!* rankStrings added based on online notes
//    (no noticeable change at run time)
//
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;

@end
