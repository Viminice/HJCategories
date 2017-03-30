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

#import "UITextField+HJExtension.h"

@implementation UITextField (HJExtension)

- (void)setHj_placeholderColor:(UIColor *)hj_placeholderColor {
    if (hj_placeholderColor == nil) return;
    // 确保创建出placeholderLabel
    if (self.placeholder == nil) {
        self.placeholder = @" ";
    }
    UILabel *placeholder = [self valueForKey:@"placeholderLabel"];
    placeholder.textColor = hj_placeholderColor;
}

- (UIColor *)hj_placeholderColor {
    if ([self valueForKey:@"placeholderLabel"]) {
        UILabel *placeholder = [self valueForKey:@"placeholderLabel"];
        return placeholder.textColor;
    }else {
        return nil;
    }
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
