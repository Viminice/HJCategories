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

/**
 *  滚动到顶部
 */
- (void)hj_scrollToTop;

/**
 *  滚动到底部
 */
- (void)hj_scrollToBottom;

/**
 *  滚动到左边
 */
- (void)hj_scrollToLeft;

/**
 *  滚动到右边
 */
- (void)hj_scrollToRight;

/**
 *  滚动到顶部,是否有动画
 */
- (void)hj_scrollToTopAnimated:(BOOL)animated;

/**
 *  滚动到底部,是否有动画
 */
- (void)hj_scrollToBottomAnimated:(BOOL)animated;

/**
 *  滚动到左边,是否有动画
 */
- (void)hj_scrollToLeftAnimated:(BOOL)animated;

/**
 *  滚动到右边,是否有动画
 */
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
