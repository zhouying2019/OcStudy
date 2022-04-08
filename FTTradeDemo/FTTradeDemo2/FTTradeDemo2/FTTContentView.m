//
//  FTTContentView.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTContentView.h"
#import "FTTContentViewController.h"

@interface FTTContentView ()
@property (nonatomic,strong) NSArray<FTTCardView *> *cardViewArray;
@end

@implementation FTTContentView

- (instancetype)initWithCardArray:(NSArray<Card *> *)cardModelArray {
    self = [super init];
    
    if(self){
        NSMutableArray<FTTCardView *> *tmpCardViewArray = [[NSMutableArray alloc] init];
        __weak FTTContentView *blockSelf = self;
        
        for(int i = 0; i < cardModelArray.count; i++){
            FTTCardView *tmpCardView = [[FTTCardView alloc] initWithCard:cardModelArray[i]];
            tmpCardView.SelectedBlock = ^{
                if(blockSelf.contentViewBlock){
                    blockSelf.contentViewBlock(tmpCardView);
                }
                //NSNotificationCenter
            };
            
            [tmpCardViewArray addObject:tmpCardView];
            [self addSubview:tmpCardView];
        }
        self.cardViewArray = [NSArray arrayWithArray:tmpCardViewArray];
    }
    return self;
}

#pragma mark - UI

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat margin = 10.0;
    CGFloat padding_top = 10.0;
    CGFloat width = (self.bounds.size.width - margin * 2 - padding_top * 2) / 3;
    CGFloat height = (self.bounds.size.height - margin * 2 - padding_top) / 2;
    CGFloat padding_bottom=(self.bounds.size.width - width * 2) / 3;
    
    for(int i = 0;i < self.cardViewArray.count;i++){
        if(i < 3){
            self.cardViewArray[i].frame = CGRectMake(margin + i * width + i * padding_top, margin, width, height);
        } else {
            self.cardViewArray[i].frame = CGRectMake(padding_bottom + (width + padding_bottom) * (i - 3), margin + padding_top + height, width, height);
        }
    }
}

#pragma mark - UI2

@end
