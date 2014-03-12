//
//  ViewController.m
//  FrameAccessor
//
//  Created by Ivanenko Dmitry on 29.10.13.
//  Copyright (c) 2013 Artox Lab. All rights reserved.
//

#import "ViewController.h"
#import "FrameAccessor.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Center
    UIView *rectAtCenter = [UIView new];
    rectAtCenter.backgroundColor = [UIColor redColor];
    rectAtCenter.viewSize = CGSizeMake(100., 100.);
    rectAtCenter.center = self.view.middlePoint;
    [self.view addSubview:rectAtCenter];
    
    // Top Left
    UIView *rectAtTopLeft = [UIView new];
    rectAtTopLeft.backgroundColor = [UIColor blueColor];
    rectAtTopLeft.viewSize = CGSizeMake(50., 50.);
    rectAtTopLeft.right = rectAtCenter.left - 25.;
    rectAtTopLeft.bottom = rectAtCenter.top - 25.;
    [self.view addSubview:rectAtTopLeft];
    
    // Top Right
    UIView *rectAtTopRight = [UIView new];
    rectAtTopRight.backgroundColor = [UIColor magentaColor];
    rectAtTopRight.viewSize = CGSizeMake(50., 50.);
    rectAtTopRight.left = rectAtCenter.right + 25.;
    rectAtTopRight.bottom = rectAtCenter.top - 25.;
    [self.view addSubview:rectAtTopRight];
    
    // Bottom Left
    UIView *rectAtBottomLeft = [UIView new];
    rectAtBottomLeft.backgroundColor = [UIColor greenColor];
    rectAtBottomLeft.viewSize = CGSizeMake(50., 50.);
    rectAtBottomLeft.right = rectAtTopLeft.right;
    rectAtBottomLeft.top = rectAtCenter.bottom + 25.;
    [self.view addSubview:rectAtBottomLeft];
    
    // Bottom Right
    UIView *rectAtBottomRight = [UIView new];
    rectAtBottomRight.backgroundColor = [UIColor brownColor];
    rectAtBottomRight.viewSize = CGSizeMake(50., 50.);
    rectAtBottomRight.left = rectAtTopRight.left;
    rectAtBottomRight.top = rectAtCenter.bottom + 25.;
    [self.view addSubview:rectAtBottomRight];
}

@end
