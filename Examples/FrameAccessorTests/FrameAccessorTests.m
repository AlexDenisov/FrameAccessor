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

@end
