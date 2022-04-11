//
//  SimpleCardView.m
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import "SimpleCardView.h"

@implementation SimpleCardView

- (instancetype)init {
    self = [super init];
    if(self){
        [self addSubview:self.cardImage];
        [self addSubview:self.topTitleLabel];
        [self addSubview:self.bottomTitleLabel];
    }
    return self;
}

- (UIImageView *)cardImage {
    if(!_cardImage){
        _cardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"card_before.png"]];
        [_cardImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSelected)]];
        [_cardImage setUserInteractionEnabled:YES];
//        [_cardImage setMultipleTouchEnabled:YES];
    }
    return _cardImage;
}

// TODO: 格式
- (UILabel *)topTitleLabel {
    if(!_topTitleLabel){
        _topTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(1, 1, 15, 15)];
        _topTitleLabel.adjustsFontSizeToFitWidth = YES;
    }
    return _topTitleLabel;
}

- (UILabel *)bottomTitleLabel {
    if(!_bottomTitleLabel){
        _bottomTitleLabel =[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        _bottomTitleLabel.adjustsFontSizeToFitWidth = YES;
    }
    return _bottomTitleLabel;
}

- (void)setCardView:(Card *)cardModel {
    UIImage *tmpImage = [UIImage imageNamed:cardModel.cardContentUrl];
    self.cardImage.image = tmpImage;
    
    self.topTitleLabel.text = cardModel.cardTitle;
    self.bottomTitleLabel.text = cardModel.cardBottomTitle;
}

- (void)onSelected {
    if(self.SelectedBlock){
        self.SelectedBlock();
    }
}

@end
