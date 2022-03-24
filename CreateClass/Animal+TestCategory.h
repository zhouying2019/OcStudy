//
//  Animal+TestCategory.h
//  CreateClass
//
//  Created by admin on 2022/3/24.
//

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Animal (TestCategory)
@property NSString* furColor;
- (void)walk;
@end

NS_ASSUME_NONNULL_END
