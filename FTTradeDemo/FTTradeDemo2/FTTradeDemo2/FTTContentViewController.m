//
//  FTTContentViewController.m
//  FTTradeDemo2
//
//  Created by admin on 2022/4/1.
//

#import "FTTContentViewController.h"

@interface FTTContentViewController ()

@property (nonatomic,strong)FTTContentView *contentView;
@end

@implementation FTTContentViewController

- (instancetype)init{
    
    self = [super init];
    
    if(self){
        self.cardArrayModel = [[NSMutableArray alloc]init];
        Card *card1 = [[Card alloc]initWithCardTurnoffContentUrl:@"A.png" CardTitle:@"A" CardBottomTitle:@"A"];
        [self.cardArrayModel addObject:card1];
        Card *card2 = [[Card alloc]initWithCardTurnoffContentUrl:@"2.png" CardTitle:@"2" CardBottomTitle:@"2"];
        [self.cardArrayModel addObject:card2];
        Card *card3 = [[Card alloc]initWithCardTurnoffContentUrl:@"3.png" CardTitle:@"3" CardBottomTitle:@"3"];
        [self.cardArrayModel addObject:card3];
        Card *card4 = [[Card alloc]initWithCardTurnoffContentUrl:@"4.png" CardTitle:@"4" CardBottomTitle:@"4"];
        [self.cardArrayModel addObject:card4];
        Card *card5 = [[Card alloc]initWithCardTurnoffContentUrl:@"5.png" CardTitle:@"5" CardBottomTitle:@"5"];
        [self.cardArrayModel addObject:card5];
    }
    return self;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.contentView = [[FTTContentView alloc]initWithCardArray:self.cardArrayModel Frame:UIScreen.mainScreen.bounds];
    self.contentView.backgroundColor = [UIColor greenColor];
    
    self.contentView.contentViewBlock = ^(Card *card,FTTCardView *cardView){
        [card turnOffCard];
        [cardView.topTitle setText:card.cardTitle];
        UIImage *tmpImage = [UIImage imageNamed:card.cardContentUrl];
        [cardView.cardImage setImage:tmpImage];
        [cardView.bottomTitle setText:card.cardTitle];
    };
    
    [self.view addSubview:self.contentView];
    
}
- (void)viewWillLayoutSubviews {

    [super viewWillLayoutSubviews];

    _contentView.frame = self.view.bounds;
}


@end
