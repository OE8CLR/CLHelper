//
//  UIScrollView+CLHelper.m
//  MySMS-Messenger
//
//  Created by Christoph Lückler on 20.05.14.
//  Copyright (c) 2014 sms.at mobile internet services gmbh. All rights reserved.
//

#import "UIScrollView+CLHelper.h"

@implementation UIScrollView (CLHelper)

- (BOOL)isAtTop {
    return (self.contentOffset.y <= [self verticalOffsetForTop]);
}

- (BOOL)isAtBottom {
    return (self.contentOffset.y >= [self verticalOffsetForBottom]);
}

- (CGFloat)verticalOffsetForTop {
    CGFloat topInset = self.contentInset.top;
    return -topInset;
}

- (CGFloat)verticalOffsetForBottom {
    CGFloat scrollViewHeight = self.bounds.size.height;
    CGFloat scrollContentSizeHeight = self.contentSize.height;
    CGFloat bottomInset = self.contentInset.bottom;
    CGFloat scrollViewBottomOffset = scrollContentSizeHeight + bottomInset - scrollViewHeight;
    return scrollViewBottomOffset;
}

- (void)scrollToBottom:(BOOL)animated {
    [self setContentOffset: CGPointMake(self.contentOffset.x, [self verticalOffsetForBottom])
                  animated: animated];
}

@end
