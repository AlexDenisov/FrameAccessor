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

@end
