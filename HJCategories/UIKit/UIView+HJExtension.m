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


#import "UIView+HJExtension.h"

@implementation UIView (HJExtension)

- (void)setHj_top:(CGFloat)hj_top {
    CGRect frame = self.frame;
    frame.origin.y = hj_top;
    self.frame = frame;
}

- (void)setHj_left:(CGFloat)hj_left {
    CGRect frame = self.frame;
    frame.origin.x = hj_left;
    self.frame = frame;
}

- (void)setHj_bottom:(CGFloat)hj_bottom {
    CGRect frame = self.frame;
    frame.origin.y = hj_bottom - self.frame.size.height;
    self.frame = frame;
}

- (void)setHj_right:(CGFloat)hj_right {
    CGRect frame = self.frame;
    frame.origin.x = hj_right - self.frame.size.width;
    self.frame = frame;
}

- (void)setHj_width:(CGFloat)hj_width {
    CGRect frame = self.frame;
    frame.size.width = hj_width;
    self.frame = frame;
}

- (void)setHj_height:(CGFloat)hj_height {
    CGRect frame = self.frame;
    frame.size.height = hj_height;
    self.frame = frame;
}

- (void)setHj_origin:(CGPoint)hj_origin {
    CGRect frame = self.frame;
    frame.origin = hj_origin;
    self.frame = frame;
}

- (void)setHj_size:(CGSize)hj_size {
    CGRect frame = self.frame;
    frame.size = hj_size;
    self.frame = frame;
}

- (void)setHj_centerX:(CGFloat)hj_centerX {
    self.center = CGPointMake(hj_centerX, self.center.y);
}

- (void)setHj_centerY:(CGFloat)hj_centerY {
    self.center = CGPointMake(self.center.x, hj_centerY);
}

- (CGFloat)hj_top {
    return self.frame.origin.y;
}

- (CGFloat)hj_left {
    return self.frame.origin.x;
}

- (CGFloat)hj_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)hj_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)hj_width {
    return self.frame.size.width;
}

- (CGFloat)hj_height {
    return self.frame.size.height;
}

- (CGPoint)hj_origin {
    return self.frame.origin;
}

- (CGSize)hj_size {
    return self.frame.size;
}

- (CGFloat)hj_centerX {
    return self.center.x;
}

- (CGFloat)hj_centerY {
    return self.center.y;
}

+ (NSString *)hj_reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void)hj_setCornerRadius:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

- (void)hj_setBorderWidth:(CGFloat)width borderColor:(UIColor *)color {
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}

+ (instancetype)hj_viewFromXib {
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil].lastObject;
}

- (void)hj_removeAllSubviews {
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
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
