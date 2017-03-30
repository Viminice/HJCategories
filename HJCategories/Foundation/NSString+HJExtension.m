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

- (NSString *)hj_md2String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_md2String];
}

- (NSString *)hj_md4String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_md4String];
}

- (NSString *)hj_md5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_md5String];
}

- (NSString *)hj_sha1String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_sha1String];
}

- (NSString *)hj_sha224String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_sha224String];
}

- (NSString *)hj_sha256String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_sha256String];
}

- (NSString *)hj_sha384String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_sha384String];
}

- (NSString *)hj_sha512String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_sha512String];
}

- (NSString *)hj_base64EncodedString {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hj_base64EncodedString];
}

+ (NSString *)hj_stringWithBase64EncodedString:(NSString *)base64EncodedString {
    NSData *data = [NSData hj_dataWithBase64EncodedString:base64EncodedString];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (CGSize)hj_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        if (lineBreakMode != NSLineBreakByWordWrapping) {
            NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
            paragraphStyle.lineBreakMode = lineBreakMode;
            attr[NSParagraphStyleAttributeName] = paragraphStyle;
        }
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        result = [self sizeWithFont:font constrainedToSize:size lineBreakMode:lineBreakMode];
#pragma clang diagnostic pop
    }
    return result;
}

- (CGFloat)hj_widthForFont:(UIFont *)font {
    CGSize size = [self hj_sizeForFont:font size:CGSizeMake(HUGE, HUGE) mode:NSLineBreakByWordWrapping];
    return size.width;
}

- (CGFloat)hj_heightForFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = [self hj_sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];
    return size.height;
}

- (BOOL)hj_matchesRegex:(NSString *)regex options:(NSRegularExpressionOptions)options {
    NSRegularExpression *pattern = [NSRegularExpression regularExpressionWithPattern:regex options:options error:NULL];
    if (!pattern) return NO;
    return ([pattern numberOfMatchesInString:self options:0 range:NSMakeRange(0, self.length)] > 0);
}

- (void)hj_enumerateRegexMatches:(NSString *)regex options:(NSRegularExpressionOptions)options usingBlock:(void (^)(NSString * _Nonnull, NSRange, BOOL * _Nonnull))block {
    if (regex.length == 0 || !block) return;
    NSRegularExpression *pattern = [NSRegularExpression regularExpressionWithPattern:regex options:options error:nil];
    if (!regex) return;
    [pattern enumerateMatchesInString:self options:kNilOptions range:NSMakeRange(0, self.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
        block([self substringWithRange:result.range], result.range, stop);
    }];
}

- (NSString *)hj_stringByReplacingRegex:(NSString *)regex
                                options:(NSRegularExpressionOptions)options
                             withString:(NSString *)replacement {
    NSRegularExpression *pattern = [NSRegularExpression regularExpressionWithPattern:regex options:options error:nil];
    if (!pattern) return self;
    return [pattern stringByReplacingMatchesInString:self options:0 range:NSMakeRange(0, [self length]) withTemplate:replacement];
}

+ (NSString *)hj_stringWithUUID {
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    return (__bridge_transfer NSString *)string;
}

- (NSString *)hj_stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (BOOL)hj_containsString:(NSString *)string {
    if (string == nil) return NO;
    return [self rangeOfString:string].location != NSNotFound;
}

- (NSNumber *)hj_numberValue {
    return [NSNumber hj_numberWithString:self];
}

- (NSData *)hj_dataValue {
    return [self dataUsingEncoding:NSUTF8StringEncoding];
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

- (NSString *)hj_reverseString {
    NSMutableString * reverseString = [NSMutableString string];
    for(int i = 0; i < self.length; i++){
        unichar c = [self characterAtIndex:self.length - i - 1];
        [reverseString appendFormat:@"%c",c];
    }
    return reverseString;
}

- (NSRange)hj_rangeOfAll {
    return NSMakeRange(0, self.length);
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
