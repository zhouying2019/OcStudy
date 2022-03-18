//
//  TwoSum.m
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import "TwoSum.h"

@implementation TwoSum
//不可变数组是NSArray*，可变数组是NSMutableArray（一般加个Mutable就可变了），装的必须是包装类，形式是@[]
//int->NSNumber:@(i),NSNumber->int:[I intValue]
//字典：因为要添加，所以用NSmutabledictionary,形式是@{k1:v1,k2:v2},map[k]=v;
+(NSArray*)solve:(NSArray*)arr :(int)target{
    NSMutableDictionary* map=[[NSMutableDictionary alloc]init];
    for(int i=0;i<arr.count;i++){
        NSNumber* compliment=@(target-[arr[i] intValue]);
        if(map[compliment]){
            return @[map[compliment],@(i)];
        }else{
            map[arr[i]]=@(i);
        }
    }
    return nil;
}

@end
