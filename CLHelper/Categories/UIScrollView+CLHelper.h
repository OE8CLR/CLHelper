//
//  UIScrollView+CLHelper.h
//  CLHelper
//
//  Created by Christoph Lückler on 20.05.14.
//  Copyright (c) 2014 Up To Eleven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (CLHelper)

- (BOOL)isAtTop;

- (BOOL)isAtBottom;

- (void)scrollToBottom:(BOOL)animated;

@end
