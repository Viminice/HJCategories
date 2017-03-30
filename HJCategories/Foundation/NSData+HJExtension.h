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

@interface NSData (HJExtension)

/**
 *  MD2加密
 */
- (NSString *)hj_md2String;

/**
 *  MD4加密
 */
- (NSString *)hj_md4String;

/**
 *  MD5加密
 */
- (NSString *)hj_md5String;

/**
 *  SHA1加密
 */
- (NSString *)hj_sha1String;

/**
 *  SHA224加密
 */
- (NSString *)hj_sha224String;

/**
 *  SHA256加密
 */
- (NSString *)hj_sha256String;

/**
 *  SHA384加密
 */
- (NSString *)hj_sha384String;

/**
 *  SHA512加密
 */
- (NSString *)hj_sha512String;

/**
 *  BASE64编码
 */
- (nullable NSString *)hj_base64EncodedString;

/**
 *  BASE64解码
 */
+ (nullable NSData *)hj_dataWithBase64EncodedString:(NSString *)base64EncodedString;

/**
 *  转换为json
 */
- (nullable id)hj_jsonValueDecoded;

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
