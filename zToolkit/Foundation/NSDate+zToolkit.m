//
//  NSDate+zToolkit.m
//  zToolkit
//
//  Created by ZhangZhenNan on 16/3/11.
//  Copyright © 2016年 zhennan. All rights reserved.
//

#import "NSDate+zToolkit.h"

@implementation NSDate(zToolkit)

@end

@implementation NSDate(zToolkit_NSDate_Time)

-(instancetype)zt_dateWithHour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSUIntegerMax fromDate:self];
    components.hour = hour;
    components.minute = minute;
    components.second = second;
    components.nanosecond = 0;
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[[calendar dateFromComponents:components] timeIntervalSince1970]] ;
    return date;
    
    
}

-(instancetype)zt_dateWithFirstSecond{
    return [self zt_dateWithHour:0 minute:0 second:0];
}

-(instancetype)zt_dateWithLastSecond{
    return [self zt_dateWithHour:23 minute:59 second:59];
}


-(instancetype)zt_daysAgo:(NSInteger)daysOfPast{
    return [self dateByAddingTimeInterval: 60 * 60 * 24 * -daysOfPast];
}

-(instancetype)zt_yesterday{
    return [self zt_daysAgo:1];
}

-(instancetype)zt_tomorrow{
    return [self zt_daysAgo:-1];
}

@end


@implementation NSDate(zToolkit_Instantiation)

+(instancetype)zt_dateWithYear:(NSUInteger)year month:(NSUInteger)month date:(NSUInteger)date{
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"y/M/d"];
    
    return [df dateFromString:[NSString stringWithFormat:@"%ld/%ld/%ld", year, month, date]];
}

@end

@implementation NSDate (zToolkit_Pretty_Looking)

-(NSString *)zt_stringWithFormat:(NSString *)format{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:self];
}

@end