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

@interface UIImage (HJExtension)

#pragma mark - Create image

/**
 *  根据颜色生成图片
 */
+ (nullable UIImage *)hj_imageWithColor:(UIColor *)color;

/**
 *  根据颜色生成图片
 */
+ (nullable UIImage *)hj_imageWithColor:(UIColor *)color size:(CGSize)size;

#pragma mark - Modify Image

/**
 *  设置图片的圆角,边框,边框颜色
 */
- (nullable UIImage *)hj_imageByRoundCornerRadius:(CGFloat)radius;

- (nullable UIImage *)hj_imageByRoundCornerRadius:(CGFloat)radius
                                      borderWidth:(CGFloat)borderWidth
                                      borderColor:(nullable UIColor *)borderColor;

- (nullable UIImage *)hj_imageByRoundCornerRadius:(CGFloat)radius
                                          corners:(UIRectCorner)corners
                                      borderWidth:(CGFloat)borderWidth
                                      borderColor:(nullable UIColor *)borderColor
                                   borderLineJoin:(CGLineJoin)borderLineJoin;

/**
 *  设置图片不被渲染
 */
+ (nullable UIImage *)hj_originalImageNamed:(NSString *)imageName;

/** 逆时针旋转 */
- (nullable UIImage *)hj_imageByRotate:(CGFloat)radians fitSize:(BOOL)fitSize;

/** 逆时针旋转90° */
- (nullable UIImage *)hj_imageByRotateLeft90;

/** 顺时针旋转90° */
- (nullable UIImage *)hj_imageByRotateRight90;

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
