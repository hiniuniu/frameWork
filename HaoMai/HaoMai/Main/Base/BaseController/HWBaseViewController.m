//
//  HWBaseViewController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWBaseViewController.h"

@interface HWBaseViewController ()

@end

@implementation HWBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = BASE_GRAY_COLOR;
    
    //返回按钮
    if (self.navigationController && self != self.navigationController.viewControllers.firstObject)
    {
        [self resetNavgation];
    }
    
}

#pragma mark - resetNav
- (void)resetNavgation {
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"back_button"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"back_button"] forState:UIControlStateHighlighted];
    [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(0, 0, 20, 30);
    backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}


#pragma mark - action
//返回
- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
