//
//  FrameViewController.m
//  OcDemo
//
//  Created by admin on 2022/3/28.
//

#import "FrameViewController.h"
#import "FrameContentView.h"

@interface FrameViewController () <FrameContentViewDelegate>

@property (nonatomic,strong) FrameContentView *contentView;

@end


@implementation FrameViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _contentView = [[FrameContentView alloc] initWithFrame: CGRectZero];
    _contentView.backgroundColor = [UIColor greenColor];
    _contentView.delegate = self;
    
    [self.view addSubview:_contentView];
}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    
    _contentView.frame = self.view.bounds;
}

- (void) respondSelected:(UIButton *)btn{
    
    btn.selected = !btn.selected;
}
@end
