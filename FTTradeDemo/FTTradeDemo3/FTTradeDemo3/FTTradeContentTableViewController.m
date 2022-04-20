//
//  FTTradeContentTableViewController.m
//  FTTradeDemo3
//
//  Created by admin on 2022/4/8.
//

#import "FTTradeContentTableViewController.h"

@interface FTTradeContentTableViewController ()

@property (nonatomic,strong) NSArray<Card *> *cardModelArray;
@property (nonatomic,strong) UITableView *contentUITableView;
@property (nonatomic, strong) id <UITableViewDataSource>vc;

@end

@implementation FTTradeContentTableViewController

-(instancetype)init{
    self = [super init];
    
    if(self){
//        self.contentUITableView = [[UITableView alloc] init];
        [self.tableView registerClass:FTTradeCardViewCellTableViewCell.class forCellReuseIdentifier:@"cell"];
        //TODO: 两个tableview？
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
//        [self.view addSubview: self.contentUITableView];
//
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

}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.contentUITableView.frame = self.view.bounds;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cardModelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FTTradeCardViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

        if (!cell) {
            cell = [[FTTradeCardViewCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
    
    [cell.cardView setCardView:self.cardModelArray[indexPath.row]];
    [self.vc tableView:tableView cellForRowAtIndexPath:indexPath];
    
    __weak FTTradeContentTableViewController *weakSelf = self;
    __weak FTTradeCardViewCellTableViewCell *weakCell = cell;
    cell.cellBlock = ^{
        [weakSelf.cardModelArray[indexPath.row] turnOffCard];

        [weakCell.cardView setCardView:weakSelf.cardModelArray[indexPath.row]];
    };
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [self.cardModelArray[indexPath.row] turnOffCard];
//    [self.contentUITableView reloadData];
}


@end
