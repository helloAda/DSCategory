//
//  NSDate+DSCategory.h
//  DSCategory
//
//  Created by 黄铭达 on 2017/9/14.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSDate (DSCategory)


/**
 格式化日期字符串

 @param format 格式化字符串
 @return 日期字符串
 */
- (nullable NSString *)ds_stringWithFormat:(NSString *)format;

/**
 增加年

 @param years 年数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingYears:(NSInteger)years;

/**
 增加月

 @param months 月数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingMonths:(NSInteger)months;

/**
 增加多少周

 @param weeks 周数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingWeeks:(NSInteger)weeks;

/**
 增加多少天

 @param days 天数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingDays:(NSInteger)days;

//增加多少小时

/**
 增加小时

 @param hours 小时数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingHours:(NSInteger)hours;

/**
 增加分钟

 @param minutes 分钟数
 @return 增加的日期
 */
- (nullable NSDate *)ds_dateByAddingMinutes:(NSInteger)minutes;

/**
 增加秒

 @param seconds 秒数
 @return 增加后的日期
 */
- (nullable NSDate *)ds_dateByAddingSeconds:(NSInteger)seconds;

//获得当天0点的时间戳

/**
 当天0点的日期

 @return 当天0点日期
 */
- (NSDate *)ds_dayStartDate;

/**
 这周开始的时间(周日开始)

 @return 这周开始的日期
 */
- (NSDate *)ds_weekStartDate;

//获得当月开始的时间

/**
 当月开始的日期

 @return 当月开始的日期
 */
- (NSDate *)ds_monthStartDate;

//获得当年开始的时间

/**
 当年开始的日期

 @return 当年开始的日期
 */
- (NSDate *)ds_yearStartDate;

//获得当月天数

/**
 当月的天数

 @return 当月的天数
 */
- (NSInteger)ds_numberOfDaysWithMonth;

/**
 日期返回年龄

 @return 年龄
 */
- (NSInteger)ds_ageWithDateOfBirth;

@end
NS_ASSUME_NONNULL_END
