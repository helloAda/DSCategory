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
    if (corner != UIRectCornerAllCorners) {
        UIRectCorner tmp = 0;
        if (corner & UIRectCornerTopLeft) tmp |= UIRectCornerBottomLeft;
        if (corner & UIRectCornerTopRight) tmp |= UIRectCornerBottomRight;
        if (corner & UIRectCornerBottomLeft) tmp |= UIRectCornerTopLeft;
        if (corner & UIRectCornerBottomRight) tmp |= UIRectCornerTopRight;
        corner = tmp;
    }
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextScaleCTM(context, 1, -1);
    CGContextTranslateCTM(context, 0, -rect.size.height);
    
    CGFloat minSize = MIN(self.size.width, self.size.height);
    if (borderWidth < minSize / 2) {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectInset(rect, borderWidth, borderWidth) byRoundingCorners:corner cornerRadii:CGSizeMake(radius, borderWidth)];
        [path closePath];
        
        CGContextSaveGState(context);
        [path addClip];
        CGContextDrawImage(context, rect, self.CGImage);
        CGContextRestoreGState(context);
    }
    
    if (strokeColor && borderWidth < minSize / 2 && borderWidth > 0) {
        CGFloat strokeInset = (floor(borderWidth * self.scale) + 0.5) / self.scale;
        CGRect strokeRect = CGRectInset(rect, strokeInset, strokeInset);
        CGFloat strokeRadius = radius > self.scale / 2 ? radius - self.scale / 2 : 0;
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:strokeRect byRoundingCorners:corner cornerRadii:CGSizeMake(strokeRadius, borderWidth)];
        [path closePath];
        
        path.lineWidth = borderWidth;
        path.lineJoinStyle = borderLineJoin;
        [strokeColor setStroke];
        [path stroke];
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;}

@end
