//
//  FTTradeCardView.m
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import "FTTradeCardView.h"

@interface FTTradeCardView()

@property(nonatomic,strong)UILabel *topTitle;
@property(nonatomic,strong)UILabel *bottomTitle;
@property(nonatomic,strong)UIImageView *cardImage;

@end

@implementation FTTradeCardView
- (instancetype)initWithCard:(Card *)cardModel {
    self = [super init];
    
    if(self){
        self.cardModel = cardModel;
        
        [self setView];
        [self addSubview:self.cardImage];
        [self addSubview:self.topTitle];
        [self addSubview:self.bottomTitle];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
 
}

- (void)onSelected {
    if(self.SelectedBlock){
        self.SelectedBlock();
    }
}

- (void)setView {
    UIImage *tmpImage = [UIImage imageNamed:self.cardModel.cardContentUrl];
    self.cardImage.image = tmpImage;
    [self.cardImage setUserInteractionEnabled:YES];
    [self.cardImage setMultipleTouchEnabled:YES];
    [self.cardImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSelected)]];
    
    self.topTitle.text = self.cardModel.cardTitle;
    self.topTitle.adjustsFontSizeToFitWidth = YES;
    self.bottomTitle.text = self.cardModel.cardBottomTitle;
    self.bottomTitle.adjustsFontSizeToFitWidth = YES;
}

- (UIImageView *)cardImage {
    if(!_cardImage){
        _cardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.cardModel.cardContentUrl]];
    }
    return _cardImage;
}
- (UILabel *)topTitle {
    if(!_topTitle){
        _topTitle = [[UILabel alloc] initWithFrame:CGRectMake(1, 1, 15, 15)];
    }
    return _topTitle;
}
- (UILabel *)bottomTitle {
    if(!_bottomTitle){
        _bottomTitle =[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    }
    return _bottomTitle;
}
@end

