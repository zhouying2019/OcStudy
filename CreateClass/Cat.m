//
//  Cat.m
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import "Cat.h"
//用extention给猫增加eyecolor私有属性以及dance私有方法
@interface Cat()
@property NSString* eyecolor;
@end

@implementation Cat
-(void)dance{
    NSLog(@"cat dance");
}
-(void)eat{
    NSLog(@"Cat eat");
}
//用protocol给猫实现蛙泳和蝶泳的方法
- (void)wayong{
    NSLog(@"cat 蛙泳");
}
- (void)dieyong{
    NSLog(@"cat 蝶泳");
}
+(void)run{
    NSLog(@"cat run");
}
@end
