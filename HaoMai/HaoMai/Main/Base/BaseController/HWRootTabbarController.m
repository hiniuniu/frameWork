//
//  HWRootTabbarController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWRootTabbarController.h"

@interface HWRootTabbarController ()

@end

@implementation HWRootTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置标签栏按钮不为蓝色
    self.tabBar.tintColor = THEME_COLOR;
    
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
