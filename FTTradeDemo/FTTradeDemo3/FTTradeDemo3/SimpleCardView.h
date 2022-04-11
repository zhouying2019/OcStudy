//
//  SimpleCardView.h
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import <UIKit/UIKit.h>
#import "Card.h"
NS_ASSUME_NONNULL_BEGIN

@interface SimpleCardView : UIView

// TODO: 注意格式
@property (nonatomic, strong) UILabel *topTitleLabel;
@property (nonatomic, strong) UILabel *bottomTitleLabel;
@property (nonatomic, strong) UIImageView *cardImage;

@property (nonatomic, copy) void (^SelectedBlock)(void);

- (void)setCardView:(Card *)cardModel;

@end

NS_ASSUME_NONNULL_END
