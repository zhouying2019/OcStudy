//
//  Card.m
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import "Card.h"

@implementation Card
- (instancetype)initWithCardTurnoffContentUrl:(NSString *)cardTurnoffContentUrl CardTitle:(NSString *)cardTitle CardBottomTitle:(NSString *)cardBottomTitle {
    self = [super init];
    
    if(self) {
        self.cardTurnoffContentUrl = cardTurnoffContentUrl;
        self.cardTitle = cardTitle;
        self.cardContentUrl = @"card_before.png";
        self.cardBottomTitle = cardBottomTitle;
        self.isSelected = NO;
    }
    return self;
}
- (void)turnOffCard {
    if(self.isSelected) {
        self.isSelected = !self.isSelected;
        self.cardContentUrl = @"card_before.png";
    } else {
        self.isSelected = !self.isSelected;
        self.cardContentUrl = self.cardTurnoffContentUrl;
    }
}

@end
