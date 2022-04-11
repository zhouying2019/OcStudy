//
//  FTTradeCardViewCellTableViewCell.h
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import <UIKit/UIKit.h>
#import "SimpleCardView.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTTradeCardViewCellTableViewCell : UITableViewCell

@property (nonatomic, strong) SimpleCardView *cardView;
@property (nonatomic, copy)void (^cellBlock)(void);
@end

NS_ASSUME_NONNULL_END
