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

@interface UIView (HJExtension)

@property (nonatomic) CGFloat hj_top;
@property (nonatomic) CGFloat hj_left;
@property (nonatomic) CGFloat hj_bottom;
@property (nonatomic) CGFloat hj_right;
@property (nonatomic) CGFloat hj_width;
@property (nonatomic) CGFloat hj_height;
@property (nonatomic) CGFloat hj_centerX;
@property (nonatomic) CGFloat hj_centerY;
@property (nonatomic) CGPoint hj_origin;
@property (nonatomic) CGSize  hj_size;

/**
 *  循环引用标示
 */
+ (NSString *)hj_reuseIdentifier;

/**
 *  设置圆角半径
 */
- (void)hj_setCornerRadius:(CGFloat)radius;

/**
 *  设置边框
 */
- (void)hj_setBorderWidth:(CGFloat)width borderColor:(UIColor *)color;

/**
 *  从xib中获取View
 */
+ (instancetype)hj_viewFromXib;

/**
 *  删除所有的子控件
 */
- (void)hj_removeAllSubviews;

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
