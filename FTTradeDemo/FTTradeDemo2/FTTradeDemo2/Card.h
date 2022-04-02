//
//  Card.h
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (nonatomic,strong) NSString *cardTitle;
@property (nonatomic,strong) NSString *cardContentUrl;
@property (nonatomic,strong) NSString *cardTurnoffContentUrl;
@property  BOOL isSelected;
@property (nonatomic,strong) NSString *cardBottomTitle;

-(instancetype)initWithCardTurnoffContentUrl:(NSString *)cardTurnoffContentUrl CardTitle:(NSString *)cardTitle CardBottomTitle:(NSString *)cardBottomTitle;
@end

NS_ASSUME_NONNULL_END
