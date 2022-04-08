//
//  FTTContentView.h
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import <UIKit/UIKit.h>
#import "FTTCardView.h"
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTTContentView : UIView

@property (nonatomic,copy)void (^contentViewBlock)(FTTCardView * cardView);

- (instancetype)initWithCardArray:(NSArray<Card *> *)cardModelArray;

@end

NS_ASSUME_NONNULL_END
