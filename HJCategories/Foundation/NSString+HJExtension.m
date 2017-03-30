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

#import "NSString+HJExtension.h"
#import "NSData+HJExtension.h"
#import "NSNumber+HJExtension.h"

@implementation NSString (HJExtension)

- (NSString *)hj_md5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_md5String];
}

- (NSString *)hj_base64EncodedString {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_base64EncodedString];
}

+ (NSString *)hj_stringWithBase64EncodedString:(NSString *)base64EncodedString {
    NSData *data = [NSData hj_dataWithBase64EncodedString:base64EncodedString];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSString *)hj_stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (BOOL)hj_containsString:(NSString *)string {
    if (string == nil) return NO;
    return [self rangeOfString:string].location != NSNotFound;
}

- (NSData *)hj_dataValue {
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSNumber *)hj_numberValue {
    return [NSNumber hj_numberWithString:self];
}

- (NSRange)hj_rangeOfAll {
    return NSMakeRange(0, self.length);
}

- (id)hj_jsonValueDecoded {
    return [[self hj_dataValue] hj_jsonValueDecoded];
}

+ (NSString *)hj_stringNamed:(NSString *)name {
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@""];
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    if (!str) {
        path = [[NSBundle mainBundle] pathForResource:name ofType:@"txt"];
        str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    }
    return str;
}

@end

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
