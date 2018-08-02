//
//  NSMutableAttributedString+DSCategory.h
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/14.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (DSCategory)


/**
 设置不同颜色
 
 @param str 要设置的字符串
 @param color 颜色
 @param range 范围
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)ds_initWithString:(NSString *)str color:(UIColor *)color range:(NSRange)range;
/**
 设置不同颜色,大小
 
 @param str   要设置的字符串
 @param color 颜色
 @param range 范围
 @param font  大小
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)ds_initWithString:(NSString *)str color:(UIColor *)color font:(UIFont *)font range:(NSRange)range;
@end
