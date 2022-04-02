//
//  Card.m
//  OcDemo
//
//  Created by admin on 2022/3/29.
//

#import "Card.h"

@implementation Card

- (instancetype)init {
    
    self = [super init];
    
    if(self){
        _contentImageUrl = @"card_before.png";
        _isChosen = NO;
    }
    return self;
}

@end
