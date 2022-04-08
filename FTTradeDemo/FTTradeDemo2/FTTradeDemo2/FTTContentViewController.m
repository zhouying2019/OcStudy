//
//  FTTContentViewController.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTContentViewController.h"

@interface FTTContentViewController ()

@property (nonatomic,strong)FTTContentView *contentView;
@property (nonatomic,strong) NSArray<Card *> *cardModelArray;
@end

@implementation FTTContentViewController

- (instancetype)init{
    self = [super init];
    
    if(self){
        Card *card1 = [[Card alloc] initWithCardTurnoffContentUrl:@"A.png" CardTitle:@"A" CardBottomTitle:@"A"];
        Card *card2 = [[Card alloc] initWithCardTurnoffContentUrl:@"2.png" CardTitle:@"2" CardBottomTitle:@"2"];
        Card *card3 = [[Card alloc] initWithCardTurnoffContentUrl:@"3.png" CardTitle:@"3" CardBottomTitle:@"3"];
        Card *card4 = [[Card alloc] initWithCardTurnoffContentUrl:@"4.png" CardTitle:@"4" CardBottomTitle:@"4"];
        Card *card5 = [[Card alloc] initWithCardTurnoffContentUrl:@"5.png" CardTitle:@"5" CardBottomTitle:@"5"];

        self.cardModelArray = [[NSArray alloc] initWithObjects:card1, card2, card3, card4, card5, nil];

    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contentView = [[FTTContentView alloc] initWithCardArray:self.cardModelArray];
    self.contentView.backgroundColor = [UIColor greenColor];
    self.contentView.contentViewBlock = ^(FTTCardView *cardView){
        [cardView.cardModel turnOffCard];
        [cardView setView];
        //解除循环引用
//        cardView = nil;
    };
    [self.view addSubview:self.contentView];
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    _contentView.frame = self.view.bounds;
}


@end
