# FrameAccessor

Easy way to access view's frame in iOS and OSX.

![FrameAccessor example](https://github.com/AlexDenisov/FrameAccessor/blob/master/screenshot.png?raw=true).

Use

```cpp
view.x = 15;
view.width = 167;
```

instead of

```cpp
CGRect newFrame = view.frame;
newFrame.origin.x = 15;
newFrame.size.width = 167;
view.frame = newFrame;
```

You can access x, y, width, height, origin or size like properties.

