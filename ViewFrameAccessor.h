//
//  ViewFrameAccessor.h
//  ViewFrameAccessor
//
//  Created by Alex Denisov on 18.03.12.
//  Copyright (c) 2013 okolodev.org. All rights reserved.
//

#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    #import <UIKit/UIKit.h>
    #define View UIView
#else
    #import <Foundation/Foundation.h>
    #define View NSView
#endif




@interface View (FrameAccessor)

// Frame
- (CGPoint)origin;
- (void)setOrigin:(CGPoint)newOrigin;
- (CGSize)size;
- (void)setSize:(CGSize)newSize;


// Frame Origin
- (CGFloat)x;
- (void)setX:(CGFloat)newX;
- (CGFloat)y;
- (void)setY:(CGFloat)newY;


// Frame Size
- (CGFloat)height;
- (void)setHeight:(CGFloat)newHeight;
- (CGFloat)width;
- (void)setWidth:(CGFloat)newWidth;


// Frame Borders
- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)top;
- (CGFloat)bottom;


// Center Point
- (CGFloat)centerX;
- (void)setCenterX:(CGFloat)newCenterX;
- (CGFloat)centerY;
- (void)setCenterY:(CGFloat)newCenterY;


// Middle Point
- (CGFloat)middleX;
- (CGFloat)middleY;

@end