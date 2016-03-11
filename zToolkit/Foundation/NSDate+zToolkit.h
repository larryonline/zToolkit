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

-(instancetype)zt_dateWith_hh:(NSInteger)hour
                           MM:(NSInteger)minute
                           ss:(NSInteger)second;

-(instancetype)zt_dateWith00_00_00;
-(instancetype)zt_dateWith23_59_59;

@end

/**
 * instantiation category
 */
@interface NSDate(zToolkit_Instantiation)

+(instancetype)zt_dateWith_yyyy:(NSInteger)year
                             mm:(NSInteger)month
                             dd:(NSInteger)date;

@end

/**
 * pretty looking category
 */
@interface NSDate(zToolkit_Pretty_Looking)

-(NSString *)zt_stringWithFormat:(NSString *)format;

@end
