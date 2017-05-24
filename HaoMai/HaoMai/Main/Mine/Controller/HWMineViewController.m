//
//  HWMineViewController.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/24.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWMineViewController.h"
#import "SettingViewController.h"

@interface HWMineViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

//设置按钮
@property (nonatomic, strong) UIButton          *settingButton;
@property (nonatomic, strong) UILabel           *titleLabel;


@end

@implementation HWMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self resetNav];
    [self setupViews];
}

#pragma mark - setupViews
- (void)resetNav {
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.settingButton];
//    self.navigationItem.titleView = self.titleLabel;
//    
    //设置当有导航栏自动添加64的高度的属性为NO
//    self.automaticallyAdjustsScrollViewInsets = NO;
//
//    UIImage *image = [UIImage imageNamed:@"Nav"];
//    
//    //更改图片大小
//    UIGraphicsBeginImageContext(CGSizeMake(kWidth, 64));
//    [image drawInRect:CGRectMake(0, 0, kWidth, 64)];
//    image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    [self setKeyScrollView:self.tableView scrolOffsetY:300 options:HYHidenControlOptionLeft | HYHidenControlOptionTitle];
//
//    [self setNavBarBackgroundImage:image];
}

- (void)setupViews {
    
}


#pragma mark - action
- (void)settingAction {
    
    NSLog(@"setting");
    
    SettingViewController *vc = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)pushSettAction:(id)sender {
    
    SettingViewController *vc = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    
    cell.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    
    return cell;
}


#pragma mark - lazyLoading
-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, -64, kWidth, kHeight) style:UITableViewStylePlain];
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

-(UIButton *)settingButton {
    if (!_settingButton) {
        
        _settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_settingButton setImage:[UIImage imageNamed:@"setting"] forState:UIControlStateNormal];
        [_settingButton setImage:[UIImage imageNamed:@"setting"] forState:UIControlStateHighlighted];
        
        _settingButton.frame = CGRectMake(0, 0, 20, 20);
        [_settingButton addTarget:self action:@selector(settingAction) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _settingButton;
}

-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"我的";
        [_titleLabel sizeToFit];
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    return _titleLabel;
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


@end
