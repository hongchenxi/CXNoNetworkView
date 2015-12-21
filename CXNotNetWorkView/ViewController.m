//
//  ViewController.m
//  CXNotNetWorkView
//
//  Created by 洪晨希 on 15/12/21.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "ViewController.h"
#import "CXNoNetWorkView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    __block CXNoNetWorkView *noNetWorkView = [[CXNoNetWorkView alloc]initWithFrame:self.view.frame reloadBlock:^{
        NSLog(@"点击了重试");
        [noNetWorkView dismissNoNetWorkView];
    }];
    
    [noNetWorkView showNoNetWorkView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
