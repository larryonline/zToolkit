//
//  zToolkitNSDateTests.m
//  zToolkit
//
//  Created by ZhangZhenNan on 16/3/11.
//  Copyright © 2016年 zhennan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+zToolkit.h"

@interface zToolkitNSDateTests : XCTestCase

@end

@implementation zToolkitNSDateTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testInstantiation{
    NSDate *date = [NSDate zt_dateWithYear:1984 month:10 date:18];
    
    NSDateComponents *compoents = [[NSCalendar currentCalendar] components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:date];
    
    NSAssert(1984 == compoents.year, @"wrong year");
    NSAssert(10 == compoents.month, @"wrong month");
    NSAssert(18 == compoents.day, @"wrong day");
}

-(void)testNSDateTime{
    NSDate *date = [[NSDate date] zt_dateWithFirstSecond];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    
    [df setDateFormat:@"H"];
    NSString *compare = [df stringFromDate:date];
    NSAssert([@"0" isEqualToString:compare], @"%@", date);
    
    [df setDateFormat:@"m"];
    compare = [df stringFromDate:date];
    NSAssert([@"0" isEqualToString:compare], @"%@", date);
    
    [df setDateFormat:@"s"];
    compare = [df stringFromDate:date];
    NSAssert([@"0" isEqualToString:compare], @"%@", date);
    
    date = [[NSDate date] zt_dateWithLastSecond];
    [df setDateFormat:@"H"];
    compare = [df stringFromDate:date];
    NSAssert([@"23" isEqualToString:compare], @"%@", date);
    
    [df setDateFormat:@"m"];
    compare = [df stringFromDate:date];
    NSAssert([@"59" isEqualToString:compare], @"%@", date);
    
    [df setDateFormat:@"s"];
    compare = [df stringFromDate:date];
    NSAssert([@"59" isEqualToString:compare], @"%@", date);
    
}

-(void)testPrettyLooking{
    NSString *string = nil;
    
    string = [[[NSDate zt_dateWithYear:1984 month:10 date:18] zt_dateWithLastSecond] zt_stringWithFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSAssert([@"1984/10/18 23:59:59" isEqualToString:string], @"%@", string);
    
    string = [[[NSDate zt_dateWithYear:1984 month:10 date:18] zt_dateWithFirstSecond] zt_stringWithFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSAssert([@"1984/10/18 00:00:00" isEqualToString:string], @"%@", string);
    
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
