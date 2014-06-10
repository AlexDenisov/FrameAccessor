//
//  FrameAccessor.h
//  FrameAccessor
//
//  Created by Alex Denisov on 18.03.12.
//  Copyright (c) 2013 okolodev.org. All rights reserved.
//

#import <FrameAccessor/ViewFrameAccessor.h>

#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    #import <FrameAccessor/ScrollViewFrameAccessor.h>
#endif
