# FrameAccessor

[![Build Status](https://travis-ci.org/AlexDenisov/FrameAccessor.svg?branch=master)](https://travis-ci.org/AlexDenisov/FrameAccessor)
[![Coverage Status](https://coveralls.io/repos/AlexDenisov/FrameAccessor/badge.svg?branch=master)](https://coveralls.io/r/AlexDenisov/FrameAccessor?branch=master)

Easy way to access view's frame in iOS and OSX.

## Compatibility

* iOS 4.3 or higher
* OSX 10.6 or higher

## Installation

### Manual Install (preferred method)

Download framework for [iOS](https://github.com/AlexDenisov/FrameAccessor/releases/download/2.0/FrameAccessor-iOS-2.0.zip) or for [OS X](https://github.com/AlexDenisov/FrameAccessor/releases/download/2.0/FrameAccessor-OSX-2.0.zip) target and drag'n'drop into your project.

Add `-ObjC -all_load` to Other Linker Flags.

### CocoaPods

Edit your Podfile and add `FrameAccessor`:

``` bash
pod 'FrameAccessor'
```

## Example Usage

```objective-c
view.x = 15.;
view.width = 167.;
```
instead of
```objective-c
CGRect newFrame = view.frame;
newFrame.origin.x = 15.;
newFrame.size.width = 167.;
view.frame = newFrame;
```

## Available Properties

`UIView/NSView` properties:

Property | Type | Аvailability
--- | --- | ---
`viewOrigin` | `CGPoint` | *readwrite*
`viewSize` | `CGSize` | *readwrite*
`x`, `y` | `CGFloat` | *readwrite*
`width`, `height` | `CGFloat` | *readwrite*
`top`, `left`, `bottom`, `right` | `CGFloat` | *readwrite*
`centerX`, `centerY` | `CGFloat` | *readwrite*
`middlePoint` | `CGPoint` | **readonly**
`middleX`, `middleY` | `CGFloat` | **readonly**
`topLeftPoint`,`topRightPoint` | `CGPoint` | **readonly**
`bottomLeftPoint`,`bottomRightPoint` | `CGPoint` | **readonly**

__Note:__ the names of @viewOrigin and @viewSize properties are prefixed with `view` to not create conflicts with Apple's private internals (As discussed in [#7](https://github.com/AlexDenisov/FrameAccessor/issues/7)).


`UIScrollView` properties:

Property | Type | Аvailability
--- | --- | ---
`contentOffsetX`, `contentOffsetY` | `CGFloat` | *readwrite*
`contentSizeWidth`, `contentSizeHeight` | `CGFloat` | *readwrite*
`contentInsetTop`, `contentInsetLeft`, <br>`contentInsetBottom`, `contentInsetRight` | `CGFloat` | *readwrite*

## License

FrameAccessor is available under the MIT license.

Copyright (c) 2012 Alexey Denisov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


