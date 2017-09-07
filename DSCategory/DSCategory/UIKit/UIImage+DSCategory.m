//
//  UIImage+DSCategory.m
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/7.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "UIImage+DSCategory.h"

@implementation UIImage (DSCategory)


+ (nullable UIImage *)ds_imageWithSize:(CGSize)size drawBlock:(void (^) (CGContextRef context))drawBlock {
    if (!drawBlock) return nil;
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    if (!context) return nil;
    drawBlock(context);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


- (nullable UIImage *)ds_imageWithRoundCornerRadius:(CGFloat)radius corner:(UIRectCorner)corner borderWidth:(CGFloat)borderWidth StrokeColor:(UIColor *)strokeColor borderLineJoin:(CGLineJoin)borderLineJoin {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    // 反转画布
    CGContextScaleCTM(context, 1, -1);
    // 移动画布到原来的位置
    CGContextTranslateCTM(context, 0, -rect.size.height);
    
}

@end
