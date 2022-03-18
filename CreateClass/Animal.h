//
//  Animal.h
//  CreateClass
//
//  Created by 1 on 2022/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject
@property NSString* name;
@property int height;
@property int length;
@property int age;
-(id)initWithName:(NSString*)name:(int)age:(int)length:(int)height;
+(void)run;
-(void)eat;

@end

NS_ASSUME_NONNULL_END
