//
//  NSDate+zToolkit.h
//  zToolkit
//
//  Created by ZhangZhenNan on 16/3/11.
//  Copyright © 2016年 zhennan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate(zToolkit)

@end

/**
 * time category
 */
@interface NSDate(zToolkit_NSDate_Time)

-(instancetype)zt_dateWithHour:(NSInteger)hour
                        minute:(NSInteger)minute
                        second:(NSInteger)second;

-(instancetype)zt_dateWithFirstSecond;
-(instancetype)zt_dateWithLastSecond;

// days
-(instancetype)zt_daysAgo:(NSInteger)daysOfPast;
-(instancetype)zt_yesterday;
-(instancetype)zt_tomorrow;

// years
-(instancetype)zt_yearsAgo:(NSInteger)yearsOfPast;
-(instancetype)zt_lastYear;
-(instancetype)zt_nextYear;

@end


/**
 * instantiation category
 */
@interface NSDate(zToolkit_Instantiation)

+(instancetype)zt_dateWithYear:(NSUInteger)year
                         month:(NSUInteger)month
                          date:(NSUInteger)date;

@end

/**
 * pretty looking category
 */
@interface NSDate(zToolkit_Pretty_Looking)

-(NSString *)zt_stringWithFormat:(NSString *)format;

@end
