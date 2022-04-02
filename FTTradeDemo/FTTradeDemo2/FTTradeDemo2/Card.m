//
//  Card.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "Card.h"

@implementation Card
- (instancetype)initWithCardTurnoffContentUrl:(NSString *)cardTurnoffContentUrl CardTitle:(NSString *)cardTitle CardBottomTitle:(NSString *)cardBottomTitle {
    
    self = [super init];
    
    if(self){
        self.cardTurnoffContentUrl = cardTurnoffContentUrl;
        self.cardTitle = cardTitle;
        self.cardContentUrl = @"card_before.png";
        self.cardBottomTitle = cardBottomTitle;
        self.isSelected = NO;
    }
    
    return self;
}

@end
