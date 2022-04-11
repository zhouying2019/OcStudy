//
//  FTTradeCardViewCellTableViewCell.m
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import "FTTradeCardViewCellTableViewCell.h"


@implementation FTTradeCardViewCellTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        
        self.cardView = [[SimpleCardView alloc] init];
        [self.contentView addSubview:self.cardView];
        // TODO:  addsubview与add至contentView的区别:如果你想通过简单地添加额外的视图来定制单元格，你应该将它们添加到内容视图中，这样它们就可以适当地定位在单元格转换成和退出编辑模式的时候。
        

        [self addSubview:self.cardView];
        self.cardView.frame = CGRectMake(0, 0, 100, 100);
//        self.cardView.clipsToBounds = YES;

        __weak FTTradeCardViewCellTableViewCell *weakSelf = self;
        weakSelf.cardView.SelectedBlock = ^{
            if(weakSelf.cellBlock){
                weakSelf.cellBlock();
            }
        };
    }
    return self;
}

@end
