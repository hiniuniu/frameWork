//
//  TsetViewController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "TsetViewController.h"

@interface TsetViewController ()

@end

@implementation TsetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self resetNavnation];
}

#pragma mark - setupViews
//重置导航栏
- (void)resetNavnation {
//    
//    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
//    UIImage *image = [UIImage imageNamed:@"Nav"];
//    
//    //更改图片大小
//    UIGraphicsBeginImageContext(CGSizeMake(kWidth, 64));
//    [image drawInRect:CGRectMake(0, 0, kWidth, 64)];
//    image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    设置导航栏背景图片
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
