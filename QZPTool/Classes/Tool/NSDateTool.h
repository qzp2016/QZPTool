//
//  NSDateTool.h
//  TestPesc
//
//  Created by disancheng on 2017/5/3.
//  Copyright © 2017年 qzp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDateTool : NSObject
NSString * yesterdayDate(NSString * formatter);
NSString * todayDate(NSString * formatter);
///今天之前的某天
NSString * preDate(NSString * formatter, NSInteger count);
NSString * lastDate(NSString * fomatter, NSInteger count);
NSString * changeDate(NSString * formatter, NSString * dateStr, NSString * oldFormatter);

//根据当前时间生成唯一标示符
NSString* getIdentifierByTime();

///时间比较， 时间1>时间2 1 ， == 0 ，小于 -1
NSInteger compareDate(NSString * aDate1, NSString * aDate2);



@end
