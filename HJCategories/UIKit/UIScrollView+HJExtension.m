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

#import "UIScrollView+HJExtension.h"
#import "MJRefresh.h"

@implementation UIScrollView (HJExtension)

- (void)hj_scrollToTop {
    [self hj_scrollToTopAnimated:YES];
}

- (void)hj_scrollToBottom {
    [self hj_scrollToBottomAnimated:YES];
}

- (void)hj_scrollToLeft {
    [self hj_scrollToLeftAnimated:YES];
}

- (void)hj_scrollToRight {
    [self hj_scrollToRightAnimated:YES];
}

- (void)hj_scrollToTopAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.y = 0 - self.contentInset.top;
    [self setContentOffset:off animated:animated];
}

- (void)hj_scrollToBottomAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.y = self.contentSize.height - self.bounds.size.height + self.contentInset.bottom;
    [self setContentOffset:off animated:animated];
}

- (void)hj_scrollToLeftAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.x = 0 - self.contentInset.left;
    [self setContentOffset:off animated:animated];
}

- (void)hj_scrollToRightAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.x = self.contentSize.width - self.bounds.size.width + self.contentInset.right;
    [self setContentOffset:off animated:animated];
}

- (void)hj_addRefreshHeaderWithBlock:(void (^)())refreshingBlock {
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:refreshingBlock];
}

- (void)hj_removeRefreshHeader {
    [self.mj_header removeFromSuperview];
    self.mj_header = nil;
}

- (void)hj_addRefreshFooterWithBlock:(void (^)())refreshingBlock {
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:refreshingBlock];
    self.mj_footer.automaticallyHidden = YES;
}

- (void)hj_removeRefreshFooter {
    [self.mj_footer removeFromSuperview];
    self.mj_footer = nil;
}

- (void)hj_endRefreshing {
    [self.mj_header endRefreshing];
    [self.mj_footer endRefreshing];
}

- (void)hj_endRefreshingWithNoMoreData {
    [self.mj_footer endRefreshingWithNoMoreData];
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
