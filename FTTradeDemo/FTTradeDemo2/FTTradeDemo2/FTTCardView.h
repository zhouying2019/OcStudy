//
//  FTTCardView.h
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import <UIKit/UIKit.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTTCardView : UIView

@property (nonatomic,strong) Card *cardModel;
@property (nonatomic,copy)void (^SelectedBlock)(void);

- (instancetype)initWithCard: (Card *)cardModel;
- (void)setView;

@end

NS_ASSUME_NONNULL_END
