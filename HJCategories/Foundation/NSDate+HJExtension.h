/**
 *                      江城子 . 程序员之歌
 *
 *                  十年生死两茫茫，写程序，到天亮。
 *                      千行代码，Bug何处藏。
 *                  纵使上线又怎样，朝令改，夕断肠。
 *
 *                  领导每天新想法，天天改，日日忙。
 *                      相顾无言，惟有泪千行。
 *                  每晚灯火阑珊处，夜难寐，加班狂。
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (HJExtension)

#pragma mark - Component Properties

@property (nonatomic, readonly) NSInteger hj_year;
@property (nonatomic, readonly) NSInteger hj_month;
@property (nonatomic, readonly) NSInteger hj_day;
@property (nonatomic, readonly) NSInteger hj_hour;
@property (nonatomic, readonly) NSInteger hj_minute;
@property (nonatomic, readonly) NSInteger hj_second;
@property (nonatomic, readonly) NSInteger hj_nanosecond;
@property (nonatomic, readonly) NSInteger hj_weekday;
@property (nonatomic, readonly) NSInteger hj_weekdayOrdinal;
@property (nonatomic, readonly) NSInteger hj_weekOfMonth;
@property (nonatomic, readonly) NSInteger hj_weekOfYear;
@property (nonatomic, readonly) NSInteger hj_yearForWeekOfYear;
@property (nonatomic, readonly) NSInteger hj_quarter;
@property (nonatomic, readonly) BOOL hj_isLeapMonth;
@property (nonatomic, readonly) BOOL hj_isLeapYear;
@property (nonatomic, readonly) BOOL hj_isToday;
@property (nonatomic, readonly) BOOL hj_isYesterday;

#pragma mark - Date modify

/**
 *  添加年
 */
- (nullable NSDate *)hj_dateByAddingYears:(NSInteger)years;

/**
 *  添加月
 */
- (nullable NSDate *)hj_dateByAddingMonths:(NSInteger)months;

/**
 *  添加周
 */
- (nullable NSDate *)hj_dateByAddingWeeks:(NSInteger)weeks;

/**
 *  添加天
 */
- (nullable NSDate *)hj_dateByAddingDays:(NSInteger)days;

/**
 *  添加小时
 */
- (nullable NSDate *)hj_dateByAddingHours:(NSInteger)hours;

/**
 *  添加分钟
 */
- (nullable NSDate *)hj_dateByAddingMinutes:(NSInteger)minutes;

/**
 *  添加秒
 */
- (nullable NSDate *)hj_dateByAddingSeconds:(NSInteger)seconds;

@end

NS_ASSUME_NONNULL_END

/**
 *                       .::::.
 *                     .::::::::.
 *                    :::::::::::
 *                 ..:::::::::::'
 *              '::::::::::::'
 *                .::::::::::
 *           '::::::::::::::..
 *                ..::::::::::::.
 *              ``::::::::::::::::
 *               ::::``:::::::::'        .:::.
 *              ::::'   ':::::'       .::::::::.
 *            .::::'      ::::     .:::::::'::::.
 *           .:::'       :::::  .:::::::::' ':::::.
 *          .::'        :::::.:::::::::'      ':::::.
 *         .::'         ::::::::::::::'         ``::::.
 *     ...:::           ::::::::::::'              ``::.
 *    ```` ':.          ':::::::::'                  ::::..
 *                       '.:::::'                    ':'````..
 */
