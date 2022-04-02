//
//  FTTCardView.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTCardView.h"
#import "Card.h"
@interface FTTCardView()

@property(nonatomic,strong)UIImageView *cardImage;
@end
@implementation FTTCardView
- (instancetype)initWithCard:(Card *)cardModel {
    
    self = [super init];
    
    if(self){
        
        UILabel *topTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
        topTitle.text = cardModel.cardTitle;
        [self addSubview:topTitle];
        

        UIImage *tmpImage = [UIImage imageNamed:cardModel.cardContentUrl];
        //真的需要设为属性吗
        self.cardImage = [[UIImageView alloc]initWithImage:tmpImage];
        [self.cardImage setUserInteractionEnabled:YES];
        [self.cardImage setMultipleTouchEnabled:YES];
        [self.cardImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSelected)]];
        [self addSubview:self.cardImage];
        
        UILabel *bottomTitle = [[UILabel alloc] initWithFrame:CGRectMake(20, 65, 50, 50)];
        bottomTitle.text = cardModel.cardBottomTitle;
        [self addSubview:bottomTitle];
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
 
}

- (void)onSelected{
    
    if(self.SelectedBlock){
        self.SelectedBlock();
    }
}

@end
