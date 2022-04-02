//
//  Card.h
//  OcDemo
//
//  Created by admin on 2022/3/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject
@property (nonatomic,strong) NSString *contentImageUrl;
@property BOOL isChosen;

- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
