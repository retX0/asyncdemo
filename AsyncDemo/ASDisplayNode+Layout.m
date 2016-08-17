//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#import "ASDisplayNode+Layout.h"


@implementation ASDisplayNode (Layout)

- (CGFloat)x {

    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {

    self.frame = CGRectMake(x, self.y, self.width, self.height);
}

- (CGFloat)y {

    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {

    self.frame = CGRectMake(self.x, y, self.width, self.height);
}

- (CGFloat)width {

    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {

    self.frame = CGRectMake(self.x, self.y, width, self.height);
}

- (CGFloat)height {

    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {

    self.frame = CGRectMake(self.x, self.y, self.width, height);
}
@end