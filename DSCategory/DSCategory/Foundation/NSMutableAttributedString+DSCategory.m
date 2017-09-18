//
//  NSMutableAttributedString+DSCategory.m
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/14.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "NSMutableAttributedString+DSCategory.h"

@implementation NSMutableAttributedString (DSCategory)

- (NSMutableAttributedString *)initWithString:(NSString *)str color:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:str];
    [attr addAttribute:NSForegroundColorAttributeName value:color range:range];
    return attr;
}

- (NSMutableAttributedString *)initWithString:(NSString *)str color:(UIColor *)color font:(UIFont *)font range:(NSRange)range {
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:str];
    [attr addAttribute:NSForegroundColorAttributeName value:color range:range];
    [attr addAttribute:NSFontAttributeName value:font range:range];
    return attr;
}
@end
