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
        Animal *a=[[Animal alloc]initWithName:@"animal_jack" :4 :105 :23];
        [Animal run];
        [a eat];
        Cat *c=[[Cat alloc]initWithName:@"cat_lucy" :2 :345 :543];
        [c eat];
        Dog *d=[[Dog alloc]initWithName:@"dog_jane" :34 :54 :222];
        [d eat];
    }
    return 0;
}
