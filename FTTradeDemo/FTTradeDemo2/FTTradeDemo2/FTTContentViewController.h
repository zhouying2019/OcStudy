//
//  FTTContentViewController.h
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import <UIKit/UIKit.h>
#import "Card.h"
#import "FTTContentView.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTTContentViewController : UIViewController

@property (nonatomic,strong) NSMutableArray<Card *> *cardArrayModel;
@property (nonatomic,copy)void (^contentViewBlock)();

@end

NS_ASSUME_NONNULL_END
