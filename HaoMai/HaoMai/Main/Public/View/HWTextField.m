//
//  HWTextField.m
//  HaoMai
//
//  Created by Meng Fan on 2017/5/24.
//  Copyright © 2017年 Haowan. All rights reserved.
//

#import "HWTextField.h"

@implementation HWTextField

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect iconRect = [super leftViewRectForBounds:bounds];
    iconRect.origin.x += 10; //像右边偏10
    return iconRect;
}


//UITextField 文字与输入框的距离
- (CGRect)textRectForBounds:(CGRect)bounds{
    
    return CGRectInset(bounds, 30, 0);
    
}

//控制文本的位置
- (CGRect)editingRectForBounds:(CGRect)bounds{
    
    return CGRectInset(bounds, 30, 0);
}

@end
