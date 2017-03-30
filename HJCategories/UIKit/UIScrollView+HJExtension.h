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

@interface UIScrollView (HJExtension)

- (void)hj_scrollToTop;
- (void)hj_scrollToBottom;
- (void)hj_scrollToLeft;
- (void)hj_scrollToRight;
- (void)hj_scrollToTopAnimated:(BOOL)animated;
- (void)hj_scrollToBottomAnimated:(BOOL)animated;
- (void)hj_scrollToLeftAnimated:(BOOL)animated;
- (void)hj_scrollToRightAnimated:(BOOL)animated;

/**
 *  添加下拉刷新控件
 */
- (void)hj_addRefreshHeaderWithBlock:(void(^)())refreshingBlock;

/**
 *  移除下拉刷新控件
 */
- (void)hj_removeRefreshHeader;

/**
 *  添加上拉加载更多控件
 */
- (void)hj_addRefreshFooterWithBlock:(void(^)())refreshingBlock;

/**
 *  移除上拉加载更多控件
 */
- (void)hj_removeRefreshFooter;

/**
 *  结束刷新
 */
- (void)hj_endRefreshing;

/**
 *  结束刷新WithNoMoreData
 */
- (void)hj_endRefreshingWithNoMoreData;

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
