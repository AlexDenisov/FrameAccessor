//
//  ViewFrameAccessor.m
//  ViewFrameAccessor
//
//  Created by Alex Denisov on 18.03.12.
//  Copyright (c) 2013 okolodev.org. All rights reserved.
//

#import "ViewFrameAccessor.h"


@implementation View (FrameAccessor)

#pragma mark Frame

- (CGPoint)viewOrigin
{
    return self.frame.origin;
}

- (void)setViewOrigin:(CGPoint)newOrigin
{
    CGRect newFrame = self.frame;
    newFrame.origin = newOrigin;
    self.frame = newFrame;
}

- (CGSize)viewSize
{
    return self.frame.size;
}

- (void)setViewSize:(CGSize)newSize
{
    CGRect newFrame = self.frame;
    newFrame.size = newSize;
    self.frame = newFrame;
}


#pragma mark Frame Origin

- (CGFloat)x
{
    return CGRectGetMinX(self.frame);
}

- (void)setX:(CGFloat)newX
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = newX;
    self.frame = newFrame;
}

- (CGFloat)y
{
    return CGRectGetMinY(self.frame);
}

- (void)setY:(CGFloat)newY
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = newY;
    self.frame = newFrame;
}


#pragma mark Frame Size

- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

- (void)setHeight:(CGFloat)newHeight
{
    CGRect newFrame = self.frame;
    newFrame.size.height = newHeight;
    self.frame = newFrame;
}

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

- (void)setWidth:(CGFloat)newWidth
{
    CGRect newFrame = self.frame;
    newFrame.size.width = newWidth;
    self.frame = newFrame;
}


#pragma mark Frame Borders

- (CGFloat)left
{
    return self.x;
}

- (void)setLeft:(CGFloat)left
{
    self.x = left;
}

- (CGFloat)right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right
{
    self.x = right - self.width;
}

- (CGFloat)top
{
    return self.y;
}

- (void)setTop:(CGFloat)top
{
    self.y = top;
}

- (CGFloat)bottom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom
{
    self.y = bottom - self.height;
}


#pragma mark Center Point

#if !IS_IOS_DEVICE
- (CGPoint)center
{
    return CGPointMake(self.left + self.middleX, self.top + self.middleY);
}

- (void)setCenter:(CGPoint)newCenter
{
    self.left = newCenter.x - self.middleX;
    self.top = newCenter.y - self.middleY;
}
#endif

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)newCenterX
{
    self.center = CGPointMake(newCenterX, self.center.y);
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)newCenterY
{
    self.center = CGPointMake(self.center.x, newCenterY);
}


#pragma mark Middle Point

- (CGPoint)middlePoint
{
    return CGPointMake(self.middleX, self.middleY);
}

- (CGFloat)middleX
{
    return CGRectGetMidX(self.bounds);
}

- (CGFloat)middleY
{
    return CGRectGetMidY(self.bounds);
}

@end