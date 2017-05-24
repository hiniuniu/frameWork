//
//  HWHomeViewController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/23.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWHomeViewController.h"
#import "TsetViewController.h"
#import "HWSearchBar.h"

@interface HWHomeViewController () <UINavigationControllerDelegate, UITextFieldDelegate>

//假的导航栏
@property (nonatomic, strong) HWSearchBar *navigationView;

@end

@implementation HWHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self resetNavnation];
    [self setupViews];
}


#pragma mark - setupViews
//重置导航栏
- (void)resetNavnation {
    
    //设置导航控制器的代理为self
    self.navigationController.delegate = self;
    
    self.navigationView = [[HWSearchBar alloc] initWithFrame:CGRectMake(0, 0, kWidth, 64)];
    self.navigationView.searchField.delegate = self;
    [self.view addSubview:self.navigationView];
    
}

- (void)setupViews {
   
    
}


#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    NSLog(@"跳转搜索页面");
    
    return NO;
}





#pragma mark - lazyLoading





#pragma mark - UINavigationControllerDelegate
// 将要显示控制器
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 判断要显示的控制器是否是自己
    BOOL isShowHomePage = [viewController isKindOfClass:[self class]];
    
    [self.navigationController setNavigationBarHidden:isShowHomePage animated:YES];
}

#pragma mark - statusBar
-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


#pragma mark - 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)homeController:(id)sender {
    
    TsetViewController *vc = [[TsetViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
