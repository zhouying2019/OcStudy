//
//  Animal+TestCategory.m
//  CreateClass
//
//  Created by admin on 2022/3/24.
//

#import "Animal+TestCategory.h"
#import <objc/runtime.h>
@implementation Animal (TestCategory)
static char*FurColorxKey="FurColorxKey";
-(void)setFurColor:(NSString *)furColor{
    objc_setAssociatedObject(self, FurColorxKey, furColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSString*)furColor{
    return objc_getAssociatedObject(self, FurColorxKey);
}
- (void)walk{
    NSLog(@"%@ 在walking",self.name);
}
@end
