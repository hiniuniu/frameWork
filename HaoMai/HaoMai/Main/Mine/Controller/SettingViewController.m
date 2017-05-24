//
//  SettingViewController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/24.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    [self resetNavnation];
    [self setupViews];
}


#pragma mark - setupViews
//重置导航栏
- (void)resetNavnation {
    UIImage *image = [UIImage imageNamed:@"Nav_white"];
    
    //更改图片大小
    UIGraphicsBeginImageContext(CGSizeMake(kWidth, 64));
    [image drawInRect:CGRectMake(0, 0, kWidth, 64)];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //设置导航栏背景图片
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

- (void)setupViews {
    
}

#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
