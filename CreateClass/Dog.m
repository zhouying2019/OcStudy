//
//  Dog.m
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import "Dog.h"
//用extention为狗增加paw_color私有属性和bark私有方法
@interface Dog()
@property NSString* paw_color;

@end

@implementation Dog
-(void)bark{
    NSLog(@"dog is barking");
}
-(void)eat{
    //[self bark];
    NSLog(@"dog eat");
}
//用protocol为狗实现蛙泳和蝶泳方法
-(void)wayong{
    NSLog(@"dog wayong");
}
-(void)dieyong{
    NSLog(@"dog dieyong");
}
+(void)run{
    NSLog(@"dog run");
}
@end
