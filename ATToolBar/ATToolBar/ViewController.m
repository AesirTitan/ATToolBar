//
//  ViewController.m
//  ATToolBar
//
//  Created by Aesir Titan on 2016-07-26.
//  Copyright © 2016年 Titan Studio. All rights reserved.
//

#import "ViewController.h"
#import "ATToolBar.h"
#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@property (strong, nonatomic) UIView *atToolbarView;

@property (strong, nonatomic) ATToolBar *atToolbar;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.atToolbarView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, SCREEN_W, 40 )];
    self.atToolbar = [[ATToolBar alloc] initWithFrame:self.atToolbarView.bounds titles:@[@"状态",@"颜色",@"定时"] action:^(NSUInteger index) {
        
    }];
    [self.atToolbarView addSubview:self.atToolbar];
    [self.view addSubview:self.atToolbarView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
