//
//  UILabel+keyword.m
//  shanmeng
//
//  Created by 凡城软件 on 16/10/19.
//  Copyright © 2016年 fancheng. All rights reserved.
//

#import "UILabel+keyword.h"

@implementation UILabel (keyword)


+(UILabel *)flagWithKeyWord:(NSString *)keyword andColor:(UIColor *)color andStr:(NSString *)str
{//一个关键字
    UILabel * label = [[UILabel alloc]init];
//    label.text = str;
    //普通颜色
    label.textColor = [UIColor blackColor];
    // 获取关键字的位置
    NSRange range = [str rangeOfString:keyword];
    // 转换成可以操作的字符串类型.
    NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:str];
    // 添加属性(粗体)
    [attribute addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:range];
    // 关键字高亮
    [attribute addAttribute:NSForegroundColorAttributeName value:color range:range];
    // 将带属性的字符串添加到label上.
    [label setAttributedText:attribute];
    label.text = str;
    
    return label;
}
+(UILabel *)flagWithKeyWords:(NSArray *)keywords andColor:(UIColor *)color andStr:(NSString *)str
{//多个关键字
    UILabel * label = [[UILabel alloc]init];
    label.text = str;
    //普通颜色
    label.textColor = [UIColor blackColor];
    return label;
}

@end
