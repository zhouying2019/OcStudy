//
//  Cat.h
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import "Animal.h"
#import "SwimProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Cat : Animal<SwimProtocol>
-(void)eat;
+(void)run;
@end

NS_ASSUME_NONNULL_END
