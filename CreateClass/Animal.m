//
//  Animal.m
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import "Animal.h"

@implementation Animal
-(id)initWithName:(NSString*)name:(int)age:(int)length:(int)height{
    self=[super init];
    if(self!=nil){
        self.name=name;
        self.length=length;
        self.height=height;
        self.age=age;
        NSLog(@"name是%@,年龄是%d岁，身高是%dcm,体长是%dcm",self.name,self.age,self.height,self.length);
    }
    return self;
}
+(void)run{
    NSLog(@"animal run");
}
-(void)eat{
    NSLog(@"animal eat");
}

@end
