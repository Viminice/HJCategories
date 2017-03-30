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

@interface NSString (HJExtension)

/** MD5加密 */
- (nullable NSString *)hj_md5String;

/** BASE64编码 */
- (nullable NSString *)hj_base64EncodedString;

/** BASE64解码 */
+ (nullable NSString *)hj_stringWithBase64EncodedString:(NSString *)base64EncodedString;

- (NSString *)hj_stringByTrim;

/** 是否包含String */
- (BOOL)hj_containsString:(NSString *)string;

/** 转换为UTF-8 */
- (NSData *)hj_dataValue;

- (NSNumber *)hj_numberValue;

- (NSRange)hj_rangeOfAll;

/** 转换为字典/数组 */
- (id)hj_jsonValueDecoded;

+ (NSString *)hj_stringNamed:(NSString *)name;

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
