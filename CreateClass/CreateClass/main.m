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
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *a=[[Animal alloc]init];
        [Animal run];
        [a eat];
        Cat *c=[[Cat alloc]init];
        [c eat];
        Dog *d=[[Dog alloc]init];
        [d eat];
    }
    return 0;
}
