//
//  Cat+AddClimb.m
//  CreateClass
//
//  Created by admin on 2022/3/24.
//
//给猫用category增加tail_length属性和climb方法
#import "Cat+AddClimb.h"
#import <objc/runtime.h>
@implementation Cat (AddClimb)
static char* TailLengthxKey="TaiLengthxKey";
-(void)setTail_length:(NSNumber *)tail_length{
    objc_setAssociatedObject(self, TailLengthxKey, tail_length, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSNumber*)tail_length{
    return objc_getAssociatedObject(self, TailLengthxKey);
}
-(void)climb{
    NSLog(@"cat climb");
}
@end
