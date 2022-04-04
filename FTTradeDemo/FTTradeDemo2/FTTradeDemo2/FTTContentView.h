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
@property (nonatomic,copy)void (^contentViewBlock)(Card *,FTTCardView * cardView);
@property (nonatomic,strong) FTTCardView *cardView1;
@property (nonatomic,strong) FTTCardView *cardView2;
@property (nonatomic,strong) FTTCardView *cardView3;
@property (nonatomic,strong) FTTCardView *cardView4;
@property (nonatomic,strong) FTTCardView *cardView5;


-(instancetype)initWithCardArray:(NSMutableArray<Card *> *)cardArray Frame:(CGRect)frame;
@end

NS_ASSUME_NONNULL_END
