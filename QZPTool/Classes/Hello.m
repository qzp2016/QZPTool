//
//  Hello.m
//  TestP
//
//  Created by disancheng on 2017/4/27.
//  Copyright © 2017年 qzp. All rights reserved.
//

#import "Hello.h"

@implementation Hello
- (void)sayHello {
    NSLog(@"hello");
}
- (void) say: (NSString *)  str {
    NSLog(@"hahaha---%@",str);
}

@end
