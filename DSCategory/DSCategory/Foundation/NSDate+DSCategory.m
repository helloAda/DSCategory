//
//  NSDate+DSCategory.m
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/14.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "NSDate+DSCategory.h"


@implementation NSDate (DSCategory)


- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setLocale:[NSLocale currentLocale]];
    return [formatter stringFromDate:self];
}

@end
