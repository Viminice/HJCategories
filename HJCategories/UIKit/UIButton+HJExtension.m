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

#import "UIButton+HJExtension.h"
#import <objc/runtime.h>

static const void *hj_btnClickBlockKey = "hj_btnClickBlockKey";

@implementation UIButton (HJExtension)

- (void)hj_addActionHandler:(HJTouchedButtonBlock)touchHandler {
    objc_setAssociatedObject(self, hj_btnClickBlockKey, touchHandler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(hj_blockActionTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)hj_blockActionTouched:(UIButton *)btn{
    HJTouchedButtonBlock block = objc_getAssociatedObject(self, hj_btnClickBlockKey);
    if (block) {
        self.enabled = NO; // 防止按钮重复点击
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            block(btn.tag);
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                self.enabled = YES;
            });
        });
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
