//
//  NSDate+InnerBand.m
//  InnerBand
//
//  InnerBand - The iOS Booster!
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "NSDate+InnerBand.h"
#import <time.h>
#import "Constants.h"
#import "ARCMacros.h"

@implementation NSDate (InnerBand)

+ (NSDate *)dateDaysAgo:(NSInteger)numDays {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSDayCalendarUnit fromDate:[NSDate date]];
    [_datecomp setDay:[_datecomp day] - numDays];
    return [_calendar dateFromComponents:_datecomp];
}

+ (NSDate *)dateWeeksAgo:(NSInteger)numWeeks {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSWeekCalendarUnit fromDate:[NSDate date]];
    [_datecomp setWeek:[_datecomp week] - numWeeks];
    return [_calendar dateFromComponents:_datecomp];
}

- (NSInteger)utcYear {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit fromDate:self];
    return [_datecomp year];
}

- (NSInteger)utcMonth {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit fromDate:self];
    return [_datecomp month];
}

- (NSInteger)utcDay {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSDayCalendarUnit fromDate:self];
    return [_datecomp day];
}

- (NSInteger)utcHour {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSHourCalendarUnit fromDate:self];
    return [_datecomp hour];
}

- (NSInteger)utcMinute {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMinuteCalendarUnit fromDate:self];
    return [_datecomp minute];
}

- (NSInteger)utcSecond {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSSecondCalendarUnit fromDate:self];
    return [_datecomp second];
}

- (NSInteger)year {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSYearCalendarUnit fromDate:self];
    return [_datecomp year];
}

- (NSInteger)month {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit fromDate:self];
    return [_datecomp month];
}

- (NSInteger)day {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSDayCalendarUnit fromDate:self];
    return [_datecomp day];
}

- (NSInteger)hour {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSHourCalendarUnit fromDate:self];
    return [_datecomp hour];
}

- (NSInteger)minute {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSMinuteCalendarUnit fromDate:self];
    return [_datecomp minute];
}

- (NSInteger)second {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    NSDateComponents *_datecomp = [_calendar components:NSSecondCalendarUnit fromDate:self];
    return [_datecomp second];
}

- (NSString *)formattedUTCDateStyle:(NSDateFormatterStyle)dateStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);

	[format setDateStyle:dateStyle];
	[format setTimeStyle:NSDateFormatterNoStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCTimeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateStyle:NSDateFormatterNoStyle];
	[format setTimeStyle:timeStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateStyle:dateStyle];
	[format setTimeStyle:timeStyle];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedUTCDatePattern:(NSString *)datePattern {
	//
	// format document: http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns
	//
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateFormat:datePattern];
	[format setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedDateStyle:(NSDateFormatterStyle)dateStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateStyle:dateStyle];
	[format setTimeStyle:NSDateFormatterNoStyle];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedTimeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateStyle:NSDateFormatterNoStyle];
	[format setTimeStyle:timeStyle];

	return [format stringFromDate:self];
}

- (NSString *)formattedDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateStyle:dateStyle];
	[format setTimeStyle:timeStyle];
	
	return [format stringFromDate:self];
}

- (NSString *)formattedDatePattern:(NSString *)datePattern {
	//
	// format document: http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns
	//
    NSDateFormatter *format = SAFE_ARC_AUTORELEASE([[NSDateFormatter alloc] init]);
    
	[format setDateFormat:datePattern];
	
	return [format stringFromDate:self];
}

- (NSDate *)dateAsMidnight {
    NSCalendar *_calendar = [NSCalendar currentCalendar];
    [_calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDateComponents *_datecomp = [_calendar components:NSMonthCalendarUnit|NSDayCalendarUnit|NSYearCalendarUnit fromDate:self];
	return [_calendar dateFromComponents:_datecomp];
}

- (BOOL)isSameDay:(NSDate *)rhs { 
    return [self isSameDay:rhs days:0];
}

- (BOOL)isSameDay:(NSDate *)rhs days:(NSInteger)days
{
	NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDate *now = [NSDate dateWithTimeInterval:3600*24*days sinceDate:self];
	NSDateComponents *comps = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:now];
	NSDateComponents *compsRHS = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:rhs];
    
	return [comps year] == [compsRHS year] && [comps month] == [compsRHS month] && [comps day] == [compsRHS day];
}

@end

