//
//  ScrollViewFrameAccessor.h
//  ScrollViewFrameAccessor
//
//  Created by Ivanenko Dmitry on 28.10.13.
//  Copyright (c) 2013 Artox Lab. All rights reserved.
//

#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    #import <UIKit/UIKit.h>
    #define ScrollView UIScrollView
#else
    #import <Foundation/Foundation.h>
    #define ScrollView NSScrollView
#endif




@interface ScrollView (FrameAccessor)


// Content Offset
- (CGFloat)contentOffsetX;
- (CGFloat)contentOffsetY;

- (void)setContentOffsetX:(CGFloat)newContentOffsetX;
- (void)setContentOffsetY:(CGFloat)newContentOffsetY;


// Content Size
- (CGFloat)contentSizeWidth;
- (CGFloat)contentSizeHeight;

- (void)setContentSizeWidth:(CGFloat)newContentSizeWidth;
- (void)setContentSizeHeight:(CGFloat)newContentSizeHeight;


// Content Inset
- (CGFloat)contentInsetTop;
- (CGFloat)contentInsetRight;
- (CGFloat)contentInsetBottom;
- (CGFloat)contentInsetLeft;

- (void)setContentInsetTop:(CGFloat)newContentInsetTop;
- (void)setContentInsetRight:(CGFloat)newContentInsetRight;
- (void)setContentInsetBottom:(CGFloat)newContentInsetBottom;
- (void)setContentInsetLeft:(CGFloat)newContentInsetLeft;

@end