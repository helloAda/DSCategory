//
//  UIImage+DSCategory.h
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/7.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (DSCategory)


/**
 Create a image with draw code

 @param size image size
 @param drawBlock draw block
 @return new image
 */
+ (nullable UIImage *)ds_imageWithSize:(CGSize)size drawBlock:(void (^) (CGContextRef context))drawBlock;


/**
  A new image with round corner size

 @param radius  radius of round corner
 @param corner  specify a rounded corner direction
 @param borderWidth border line width
 @param strokeColor border stroke color
 @param borderLineJoin border line join
 @return new image
 */
- (nullable UIImage *)ds_imageWithRoundCornerRadius:(CGFloat)radius
                                             corner:(UIRectCorner)corner
                                        borderWidth:(CGFloat)borderWidth
                                        StrokeColor:(UIColor *)strokeColor
                                     borderLineJoin:(CGLineJoin)borderLineJoin;

@end

NS_ASSUME_NONNULL_END
