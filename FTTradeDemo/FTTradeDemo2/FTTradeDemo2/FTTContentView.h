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

@property (nonatomic,strong) NSMutableArray<Card *> *cardArray;

-(instancetype)initWithCardArray:(NSMutableArray<Card *> *)cardArray Frame:(CGRect)frame;
@end

NS_ASSUME_NONNULL_END
