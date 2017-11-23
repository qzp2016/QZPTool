//
//  UITextField+BackgroundView.m
//  AddQzpTool
//
//  Created by disancheng on 2017/11/23.
//  Copyright © 2017年 qzp. All rights reserved.
//

#import "UITextField+BackgroundView.h"
#import <objc/runtime.h>

static const void * KeyBgColor = &KeyBgColor;
static const void * KeyCornerRadius = &KeyCornerRadius;

@implementation UITextField (BackgroundView)
@dynamic bgFrame, bgColor, bgCornerRadius;
- (void)setBgFrame:(UIEdgeInsets)bgFrame {
    //    NSLog(@"%@", bgFrame);
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    UIView * bgView = [[UIView alloc] initWithFrame:
                       CGRectMake(self.frame.origin.x - bgFrame.left,  self.frame.origin.y - bgFrame.top,  self.frame.size.width + bgFrame.left + bgFrame.right, self.frame.size.height + bgFrame.top + bgFrame.bottom)];
    bgView.backgroundColor  =[UIColor colorWithRed: 242.0/255.0 green:242.0/255.0 blue:242.0/255.0 alpha:1];
    if (self.bgCornerRadius) {
        bgView.layer.cornerRadius = self.bgCornerRadius;
    }
    if (self.bgColor) {
        bgView.backgroundColor = self.bgColor;
    }
    
    [self.superview insertSubview: bgView belowSubview: self];
    
}
- (UIEdgeInsets) bgFrame {
    return self.bgFrame;
}

- (void)setBgColor:(UIColor *)bgColor {
    objc_setAssociatedObject(self, KeyBgColor, bgColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (UIColor *)bgColor {
    return  objc_getAssociatedObject(self, KeyBgColor);
}
- (void)setBgCornerRadius:(CGFloat)bgCornerRadius {
    NSNumber * cNumber = [NSNumber numberWithFloat: bgCornerRadius];
    objc_setAssociatedObject(self, KeyCornerRadius, cNumber, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)bgCornerRadius {
    NSNumber * n = objc_getAssociatedObject(self, KeyCornerRadius);
    return [n floatValue];
}


@end
