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
@property (nonatomic) CGFloat contentOffsetX;
@property (nonatomic) CGFloat contentOffsetY;

// Content Size
@property (nonatomic) CGFloat contentSizeWidth;
@property (nonatomic) CGFloat contentSizeHeight;

// Content Inset
@property (nonatomic) CGFloat contentInsetTop;
@property (nonatomic) CGFloat contentInsetLeft;
@property (nonatomic) CGFloat contentInsetBottom;
@property (nonatomic) CGFloat contentInsetRight;

@end