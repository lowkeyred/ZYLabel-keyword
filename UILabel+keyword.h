//
//  UILabel+keyword.h
//  shanmeng
//
//  Created by 凡城软件 on 16/10/19.
//  Copyright © 2016年 fancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (keyword)
+(UILabel *)flagWithKeyWord:(NSString *)keyword andColor:(UIColor *)color andStr:(NSString *)str;
+(void)flagWithKeyWord:(NSString *)keyword andColor:(UIColor *)color andStr:(NSString *)str andLabel:(UILabel *)label;
@end
