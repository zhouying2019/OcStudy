//
//  Dog+addSound.m
//  CreateClass
//
//  Created by admin on 2022/3/24.
//

#import "Dog+addSound.h"
#import <objc/runtime.h>
//用category为狗增加leg_length属性和sound方法
@implementation Dog (addSound)
static char*LegLengthxKey="LeglengthxKey";
- (void)setLeg_length:(NSNumber*)leg_length{
    objc_setAssociatedObject(self, LegLengthxKey, leg_length, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSNumber*)leg_length{
    return objc_getAssociatedObject(self, LegLengthxKey);
}
- (void)sound{
    NSLog(@"dog sound");
}
@end
