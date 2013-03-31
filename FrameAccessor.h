//
//  FrameAccessor.h
//  FrameAccessor
//
//  Created by Alex Denisov on 18.03.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import <Foundation/Foundation.h>

#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    #define View UIView
#else
    #define View NSView
#endif

@interface View (FrameAccessor)

- (CGPoint)origin;
- (void)setOrigin:(CGPoint)newOrigin;
- (CGSize)size;
- (void)setSize:(CGSize)newSize;

- (CGFloat)x;
- (void)setX:(CGFloat)newX;
- (CGFloat)y;
- (void)setY:(CGFloat)newY;

- (CGFloat)height;
- (void)setHeight:(CGFloat)newHeight;
- (CGFloat)width;
- (void)setWidth:(CGFloat)newWidth;

@end
