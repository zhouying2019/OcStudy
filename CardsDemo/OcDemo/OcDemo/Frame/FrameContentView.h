//
//  FrameContentView.h
//  OcDemo
//
//  Created by admin on 2022/3/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FrameContentViewDelegate

@required
//触发事件方法
-(void) respondSelected : (UIButton *)btn;

@end

@interface FrameContentView : UIView

@property(nonatomic, weak) id delegate;

@end

NS_ASSUME_NONNULL_END
