//
//  UIView+Extension.m
//  TestPesc
//
//  Created by disancheng on 2017/5/3.
//  Copyright © 2017年 qzp. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
@dynamic viewController;
- (UIViewController *)viewController
{
    UIViewController *viewController=nil;
    UIView* next = [self superview];
    UIResponder *nextResponder = [next nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]])
    {
        viewController = (UIViewController *)nextResponder;
    }
    else
    {
        viewController = [next viewController];
    }
    return viewController;
}
@dynamic cornerRadius,boardColor,borderWidth;
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.masksToBounds = YES;
    self.userInteractionEnabled = YES;
    self.layer.cornerRadius = cornerRadius;
}
- (void)setBoardColor:(UIColor *)boardColor
{
    if (self.layer.borderWidth == 0) {
        self.layer.borderWidth = 1;
    }
    self.layer.borderColor = boardColor.CGColor;
}
- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

@end
