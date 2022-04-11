//
//  Card.h
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (nonatomic, copy) NSString *cardTitle;
@property (nonatomic, copy) NSString *cardContentUrl;
@property (nonatomic, copy) NSString *cardTurnoffContentUrl;
// TODO: zoeli zhelihaiweichuli
@property (nonatomic, assign) BOOL isSelected;
@property (nonatomic, copy) NSString *cardBottomTitle;

- (instancetype)initWithCardTurnoffContentUrl:(NSString *)cardTurnoffContentUrl CardTitle:(NSString *)cardTitle CardBottomTitle:(NSString *)cardBottomTitle;
- (void)turnOffCard;
@end

NS_ASSUME_NONNULL_END
