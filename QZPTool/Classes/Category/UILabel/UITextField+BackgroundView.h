//
//  UITextField+BackgroundView.h
//  AddQzpTool
//
//  Created by disancheng on 2017/11/23.
//  Copyright © 2017年 qzp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (BackgroundView)
//给输入框添加背景， bgFrame属性必须在最后，如果没有bgCornerRadius 会使用默认颜色， 如果是nib加载，获取到的frame位置会不正确，请在viewDidLayoutSubviews调用bgFrame;
@property (nonatomic, assign) CGFloat bgCornerRadius;
@property (nonatomic, strong) UIColor * bgColor;
@property (nonatomic, assign)  UIEdgeInsets bgFrame;
@end
