//
//  HWBaseNavigationController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWBaseNavigationController.h"

@interface HWBaseNavigationController () <UINavigationControllerDelegate>

@end

@implementation HWBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    //右滑手势返回
    self.interactivePopGestureRecognizer.delegate = (id)self;
    
    self.delegate = self;
}

// 表示的意思是:当挡墙控制器是根控制器了,那么就不接收触摸事件,只有当不是根控制器时才需要接收事件.
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    return self.childViewControllers.count > 1;
}

#pragma mark - UINavigationControllerDelegate
//push页面时隐藏tabbar栏
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
