//
//  main.m
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
#import "Animal+TestCategory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //测试为三个类初始化赋值以及cat和dog重写animal的eat和run方法
        Animal *a=[[Animal alloc]initWithName:@"animal_jack" :4 :105 :23];
        [Animal run];
        [a eat];
        Cat *c=[[Cat alloc]initWithName:@"cat_lucy" :2 :345 :543];
        [c eat];
        [Cat run];
        Dog *d=[[Dog alloc]initWithName:@"dog_jane" :34 :54 :222];
        [d eat];
        [Cat run];
        //测试Animal用category扩展的walk方法
        [a walk];
        [c walk];
        [d walk];
        //测试Animal用category扩展的furcolor属性
        [a setFurColor:@"red"];
        NSLog(@"animal的furcolor为%@",a.furColor);
        //测试dog用protocol实现swim协议
        [d dieyong];
        [d wayong];
    }
    return 0;
}
