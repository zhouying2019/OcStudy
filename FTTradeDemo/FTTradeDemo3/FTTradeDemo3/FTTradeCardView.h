//
//  FTTradeCardView.h
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import <UIKit/UIKit.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTTradeCardView : UIView
@property (nonatomic,strong) Card *cardModel;
@property (nonatomic,copy)void (^SelectedBlock)(void);

- (instancetype)initWithCard: (Card *)cardModel;
- (void)setView;

@end

NS_ASSUME_NONNULL_END
