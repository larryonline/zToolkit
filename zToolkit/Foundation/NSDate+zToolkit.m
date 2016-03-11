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

-(instancetype)zt_dateWith_hh:(NSInteger)hour MM:(NSInteger)minute ss:(NSInteger)second{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSUIntegerMax fromDate:self];
    components.hour = hour;
    components.minute = minute;
    components.second = second;
    
    NSTimeInterval ts = [[calendar dateFromComponents:components] timeIntervalSince1970];
    return [NSDate dateWithTimeIntervalSince1970:ts];
}

-(instancetype)zt_dateWith00_00_00{
    return [self zt_dateWith_hh:0 MM:0 ss:0];
}

-(instancetype)zt_dateWith23_59_59{
    return [self zt_dateWith_hh:23 MM:59 ss:59];
}

@end


@implementation NSDate(zToolkit_Instantiation)

+(instancetype)zt_dateWith_yyyy:(NSInteger)year mm:(NSInteger)month dd:(NSInteger)date{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSUIntegerMax fromDate:[[NSDate alloc] init]];
    components.year = year;
    components.month = month;
    components.day = date;
    
    return [calendar dateFromComponents:components];
}

@end

@implementation NSDate (zToolkit_Pretty_Looking)

-(NSString *)zt_stringWithFormat:(NSString *)format{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:self];
}

@end