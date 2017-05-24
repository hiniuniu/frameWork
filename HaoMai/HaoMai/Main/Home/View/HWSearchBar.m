//
//  HWSearchBar.m
//  HomeUI
//
//  Created by Meng Fan on 2017/5/17.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWSearchBar.h"

@interface HWSearchBar ()

@property (nonatomic, strong) UIImageView *bgImageView;

@end

@implementation HWSearchBar

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupViews];
        
    }
    return self;
}

- (void)setupViews {
    
    [self addSubview:self.bgImageView];
    [self addSubview:self.searchField];
    
    MPWeakSelf(self);
    
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        MPStrongSelf(self);
        make.edges.equalTo(self).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [self.searchField mas_makeConstraints:^(MASConstraintMaker *make) {
        MPStrongSelf(self);
        make.size.mas_equalTo(CGSizeMake(250, 30));
        make.centerX.equalTo(self);
        make.bottom.equalTo(self).with.offset(-10);
    }];

}

#pragma mark - lazyLoading
-(UIImageView *)bgImageView {
    if (!_bgImageView) {
        
        _bgImageView = [[UIImageView alloc] init];
        
        UIImage *image = [UIImage imageNamed:@"Nav"];
        
//        //更改图片大小
//        UIGraphicsBeginImageContext(CGSizeMake(kWidth, 64));
//        [image drawInRect:CGRectMake(0, 0, kWidth, 64)];
//        image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
        
        _bgImageView.image = image;
        
    }
    return _bgImageView;
}

-(HWTextField *)searchField {
    if (!_searchField) {
        
        _searchField = [[HWTextField alloc] init];
        _searchField.leftViewMode = UITextFieldViewModeAlways;
        _searchField.placeholder = @"搜索：商品、品牌";
        _searchField.font = [UIFont systemFontOfSize:14];
        
        UIImageView *leftView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        leftView.image = [UIImage imageNamed:@"search_icon"];
        _searchField.leftView = leftView;
        
        _searchField.backgroundColor = [UIColor whiteColor];
        //圆角
        _searchField.layer.cornerRadius = 15;
        _searchField.layer.masksToBounds = YES;
        
    }
    return _searchField;
}

@end
