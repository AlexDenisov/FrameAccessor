#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FrameAccessor/FrameAccessor.h>

@interface FrameAccessorTests : XCTestCase
@end

@implementation FrameAccessorTests

- (void)testGetViewOrigin {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    CGPoint viewOrigin = view.viewOrigin;
    XCTAssertEqual(viewOrigin.x, 1);
    XCTAssertEqual(viewOrigin.y, 2);
}

- (void)testSetViewOrigin {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.viewOrigin = CGPointMake(10, 20);
    XCTAssertEqual(view.viewOrigin.x, 10);
    XCTAssertEqual(view.viewOrigin.y, 20);
    XCTAssertEqual(view.frame.origin.x, 10);
    XCTAssertEqual(view.frame.origin.y, 20);
}

- (void)testGetViewSize {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    CGSize viewSize = view.viewSize;
    XCTAssertEqual(viewSize.width, 3);
    XCTAssertEqual(viewSize.height, 4);
}

- (void)testSetViewSize {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.viewSize = CGSizeMake(30, 40);
    XCTAssertEqual(view.viewSize.width, 30);
    XCTAssertEqual(view.viewSize.height, 40);
    XCTAssertEqual(view.frame.size.width, 30);
    XCTAssertEqual(view.frame.size.height, 40);
}

- (void)testGetX {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.x, 1);
}

- (void)testSetX {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.x = 10;
    XCTAssertEqual(view.x, 10);
    XCTAssertEqual(view.frame.origin.x, 10);
}

- (void)testGetY {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.y, 2);
}

- (void)testSetY {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.y = 20;
    XCTAssertEqual(view.y, 20);
    XCTAssertEqual(view.frame.origin.y, 20);
}

- (void)testGetWidth {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.width, 3);
}

- (void)testSetWidth {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.width = 30;
    XCTAssertEqual(view.width, 30);
    XCTAssertEqual(view.frame.size.width, 30);
}

- (void)testGetHeight {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.height, 4);
}

- (void)testSetHeight {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.height = 40;
    XCTAssertEqual(view.height, 40);
    XCTAssertEqual(view.frame.size.height, 40);
}

- (void)testGetTop {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.top, 2);
}

- (void)testSetTop {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.top = 0;
    XCTAssertEqual(view.top, 0);
    XCTAssertEqual(CGRectGetMinY(view.frame), 0);
}

- (void)testGetLeft {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.left, 1);
}

- (void)testSetLeft {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.left = 0;
    XCTAssertEqual(view.left, 0);
    XCTAssertEqual(CGRectGetMinX(view.frame), 0);
}

- (void)testGetBottom {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.bottom, 6);
}

- (void)testSetBottom {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.bottom = 10;
    XCTAssertEqual(view.bottom, 10);
    XCTAssertEqual(CGRectGetMaxY(view.frame), 10);
}

- (void)testGetRight {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.right, 4);
}

- (void)testSetRight {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.right = 10;
    XCTAssertEqual(view.right, 10);
    XCTAssertEqual(CGRectGetMaxX(view.frame), 10);
}

- (void)testGetCenterX {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.centerX, 2.5);
}

- (void)testSetCenterX {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.centerX = 10;
    XCTAssertEqual(view.centerX, 10);
    XCTAssertEqual(CGRectGetMidX(view.frame), 10);
}

- (void)testGetCenterY {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.centerY, 4);
}

- (void)testSetCenter {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    view.centerY = 10;
    XCTAssertEqual(view.centerY, 10);
    XCTAssertEqual(CGRectGetMidY(view.frame), 10);
}

- (void)testGetMiddlePoint {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.middlePoint.x, 1.5);
    XCTAssertEqual(view.middlePoint.y, 2);
}

- (void)testGetMiddleX {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.middleX, 1.5);
}

- (void)testGetMiddleY {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 3, 4)];
    XCTAssertEqual(view.middleY, 2);
}

- (void)testGetContentOffsetX {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    XCTAssertEqual(scrollView.contentOffsetX, 0);
}

- (void)testSetContentOffsetX {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    scrollView.contentOffsetX = 5;
    XCTAssertEqual(scrollView.contentOffsetX, 5);
    XCTAssertEqual(scrollView.contentOffset.x, 5);
}

- (void)testGetContentOffsetY {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    XCTAssertEqual(scrollView.contentOffsetY, 0);
}

- (void)testSetContentOffsetY {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    scrollView.contentOffsetY = 5;
    XCTAssertEqual(scrollView.contentOffsetY, 5);
    XCTAssertEqual(scrollView.contentOffset.y, 5);
}

@end
