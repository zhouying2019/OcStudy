//
//  FrameContentView.m
//  OcDemo
//
//  Created by admin on 2022/3/28.
//

#import "FrameContentView.h"
@interface FrameContentView()

//@property (strong) UIView *subView1;
@property (nonatomic,strong) UIButton *btn1;
@property (nonatomic,strong) UIButton *btn2;
@property (nonatomic,strong) UIButton *btn3;
@property (nonatomic,strong) UIButton *btn4;
@property (nonatomic,strong) UIButton *btn5;
@end

@implementation FrameContentView


- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame: frame];
    
    if (self) {
        
        _btn1 = [UIButton buttonWithType:UIButtonTypeCustom]; 
        [self addSubview:_btn1];
        
        _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_btn2];
        
        _btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [self addSubview:_btn3];
        
        _btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_btn4];
        
        _btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_btn5];
        
        
    }
    
    return  self;
}


- (void)layoutSubviews {

    [super layoutSubviews];

    CGFloat margin = 20.0;
    CGFloat padding_top = 20.0;
    CGFloat width = (self.bounds.size.width - margin * 2 - padding_top*2) / 3;
    CGFloat height = (self.bounds.size.height - margin * 2 - padding_top) / 2;
    CGFloat padding_bottom=(self.bounds.size.width-width * 2) / 3;

    UIImage *card_before_image = [UIImage imageNamed:@"card_before.png"];
    UIImage *card_A_image = [UIImage imageNamed:@"A.png"];
    UIImage *card_2_image = [UIImage imageNamed:@"2.png"];
    UIImage *card_3_image = [UIImage imageNamed:@"3.png"];
    UIImage *card_4_image = [UIImage imageNamed:@"4.png"];
    UIImage *card_5_image = [UIImage imageNamed:@"5.png"];

    self.btn1.frame = CGRectMake(margin, margin, width, height);
    [self.btn1 setImage:card_before_image forState:UIControlStateNormal];
    [self.btn1 setImage:card_A_image forState:UIControlStateSelected];
    [self.btn1 addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];

    self.btn2.frame = CGRectMake(margin + width + padding_top, margin, width, height);
    [self.btn2 setImage:card_before_image forState:UIControlStateNormal];
    [self.btn2 setImage:card_2_image forState:UIControlStateSelected];
    [self.btn2 addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];

    self.btn3.frame = CGRectMake(margin + width * 2 + padding_top * 2, margin, width, height);
    [self.btn3 setImage:card_before_image forState:UIControlStateNormal];
    [self.btn3 setImage:card_3_image forState:UIControlStateSelected];
    [self.btn3 addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];

    self.btn4.frame = CGRectMake(padding_bottom, margin + padding_top + height, width, height);
    [self.btn4 setImage:card_before_image forState:UIControlStateNormal];
    [self.btn4 setImage:card_4_image forState:UIControlStateSelected];
    [self.btn4 addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];

    self.btn5.frame = CGRectMake(padding_bottom * 2 + width, margin + padding_top + height, width, height);
    [self.btn5 setImage:card_before_image forState:UIControlStateNormal];
    [self.btn5 setImage:card_5_image forState:UIControlStateSelected];
    [self.btn5 addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];


}



- (void)onSelected:(UIButton *) button{
    //检查某个对象是否有某个method，只要呼叫 respondsToSelector: 就可以了
    if([_delegate respondsToSelector:@selector(respondSelected:)]) {
        
        [_delegate respondSelected:button];
    }
}
@end
