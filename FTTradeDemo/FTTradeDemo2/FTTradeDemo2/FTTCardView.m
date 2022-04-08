//
//  FTTCardView.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTCardView.h"
#import "Card.h"
@interface FTTCardView()

@property(nonatomic,strong)UILabel *topTitle;
@property(nonatomic,strong)UILabel *bottomTitle;
@property(nonatomic,strong)UIImageView *cardImage;

@end

@implementation FTTCardView
- (instancetype)initWithCard:(Card *)cardModel {
    self = [super init];
    
    if(self){
        self.cardModel = cardModel;

        [self.cardImage setUserInteractionEnabled:YES];
        [self.cardImage setMultipleTouchEnabled:YES];
        [self.cardImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSelected)]];
        [self addSubview:self.cardImage];
        
        self.topTitle = [[UILabel alloc] initWithFrame:CGRectMake(1, 1, 15, 15)];
        self.topTitle.text = self.cardModel.cardTitle;
        self.topTitle.adjustsFontSizeToFitWidth = YES;
        // TODO: 了解sizeToFit
//        [self.topTitle sizeToFit];
//        self.topTitle sizeThatFits:<#(CGSize)#>
        
        [self addSubview:self.topTitle];
        
        self.bottomTitle = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        self.bottomTitle.text = self.cardModel.cardBottomTitle;
        self.bottomTitle.adjustsFontSizeToFitWidth = YES;
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
    self.topTitle.text = self.cardModel.cardTitle;
    self.bottomTitle.text = self.cardModel.cardBottomTitle;
}

- (UIImageView *)cardImage{
    if(!_cardImage){
        _cardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.cardModel.cardContentUrl]];
    }
    return _cardImage;
}
@end

