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

@property(nonatomic,strong)UILabel *topTitle;
@property(nonatomic,strong)UILabel *bottomTitle;
@property(nonatomic,strong)UIImageView *cardImage;
@property (nonatomic,copy)void (^SelectedBlock)(void);

- (instancetype)initWithCard: (Card *)cardModel;

@end

NS_ASSUME_NONNULL_END
