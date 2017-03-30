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

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HJExtension)

#pragma mark - Hash

/**
 *  MD2加密
 */
- (nullable NSString *)hj_md2String;

/**
 *  MD4加密
 */
- (nullable NSString *)hj_md4String;

/**
 *  MD5加密
 */
- (nullable NSString *)hj_md5String;

/**
 *  sha1加密
 */
- (nullable NSString *)hj_sha1String;

/**
 *  224加密
 */
- (nullable NSString *)hj_sha224String;

/**
 *  256加密
 */
- (nullable NSString *)hj_sha256String;

/**
 *  384加密
 */
- (nullable NSString *)hj_sha384String;

/**
 *  512加密
 */
- (nullable NSString *)hj_sha512String;

#pragma mark - Encode and decode

/**
 *  BASE64编码
 */
- (nullable NSString *)hj_base64EncodedString;

/**
 *  BASE64解码
 */
+ (nullable NSString *)hj_stringWithBase64EncodedString:(NSString *)base64EncodedString;

#pragma mark - Drawing

/**
 *  计算字符串的Size
 */
- (CGSize)hj_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

/**
 *  计算字符串的宽度
 */
- (CGFloat)hj_widthForFont:(UIFont *)font;

/**
 *  计算字符串的高度
 */
- (CGFloat)hj_heightForFont:(UIFont *)font width:(CGFloat)width;

#pragma mark - Regular Expression

/**
 *  正则判断是否有匹配
 */
- (BOOL)hj_matchesRegex:(NSString *)regex options:(NSRegularExpressionOptions)options;

/**
 *  遍历正则匹配的结果
 */
- (void)hj_enumerateRegexMatches:(NSString *)regex
                         options:(NSRegularExpressionOptions)options
                      usingBlock:(void (^)(NSString *match,NSRange matchRange, BOOL *stop))block;

/**
 *  替换正则匹配
 */
- (NSString *)hj_stringByReplacingRegex:(NSString *)regex
                                options:(NSRegularExpressionOptions)options
                             withString:(NSString *)replacement;

#pragma mark - Utilities

/**
 *  获取设备的UUID
 */
+ (NSString *)hj_stringWithUUID;

/**
 *  整理字符串
 */
- (NSString *)hj_stringByTrim;

/**
 *  是否包含字符串
 */
- (BOOL)hj_containsString:(NSString *)string;

/**
 *  字符串转换为NSNumber
 */
- (NSNumber *)hj_numberValue;

/**
 *  字符串转换为NSData
 */
- (NSData *)hj_dataValue;

/**
 *  转换为JSON数据类型
 */
- (id)hj_jsonValueDecoded;

/**
 *  从文件中读取字符串
 */
+ (NSString *)hj_stringNamed:(NSString *)name;

/**
 *  反转字符串
 */
- (NSString *)hj_reverseString;

- (NSRange)hj_rangeOfAll;

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
