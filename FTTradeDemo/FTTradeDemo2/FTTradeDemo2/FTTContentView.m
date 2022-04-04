//
//  FTTContentView.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTContentView.h"

@interface FTTContentView()

@end

@implementation FTTContentView

- (instancetype)initWithCardArray:(NSMutableArray<Card *>*)cardArray Frame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if(self){
        self.cardView1 = [[FTTCardView alloc]initWithCard:cardArray[0]];
        [self addSubview:self.cardView1];
        self.cardView1.SelectedBlock = ^{
            if(self.contentViewBlock){
                self.contentViewBlock(cardArray[0],self.cardView1);
            }
        };
        self.cardView2 = [[FTTCardView alloc]initWithCard:cardArray[1]];
        [self addSubview:self.cardView2];
        self.cardView2.SelectedBlock = ^{
            if(self.contentViewBlock){
                self.contentViewBlock(cardArray[1],self.cardView2);
            }
        };
        self.cardView3 = [[FTTCardView alloc]initWithCard:cardArray[2]];
        [self addSubview:self.cardView3];
        self.cardView3.SelectedBlock = ^{
            if(self.contentViewBlock){
                self.contentViewBlock(cardArray[2],self.cardView3);
            }
        };
        
        self.cardView4 = [[FTTCardView alloc]initWithCard:cardArray[3]];
        [self addSubview:self.cardView4];
        self.cardView4.SelectedBlock = ^{
            if(self.contentViewBlock){
                self.contentViewBlock(cardArray[3],self.cardView4);
            }
        };
        
        self.cardView5 = [[FTTCardView alloc]initWithCard:cardArray[4]];
        [self addSubview:self.cardView5];
        self.cardView5.SelectedBlock = ^{
            if(self.contentViewBlock){
                self.contentViewBlock(cardArray[4],self.cardView5);
            }
        };
    }
    return self;
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    
    CGFloat margin = 10.0;
    CGFloat padding_top = 10.0;
    CGFloat width = (self.bounds.size.width - margin * 2 - padding_top*2) / 3;
    CGFloat height = (self.bounds.size.height - margin * 2 - padding_top) / 2;
    CGFloat padding_bottom=(self.bounds.size.width-width * 2) / 3;
    
    self.cardView1.frame = CGRectMake(margin, margin, width, height);
    self.cardView2.frame = CGRectMake(margin + width + padding_top, margin, width, height);
    self.cardView3.frame = CGRectMake(margin + width * 2 + padding_top * 2, margin, width, height);
    self.cardView4.frame = CGRectMake(padding_bottom, margin + padding_top + height, width, height);
    self.cardView5.frame = CGRectMake(padding_bottom * 2 + width, margin + padding_top + height, width, height);
}

@end
