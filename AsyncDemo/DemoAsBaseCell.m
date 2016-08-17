//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#import "DemoAsBaseCell.h"
#import "ASDisplayNode+Layout.h"


@implementation DemoAsBaseCell {

}

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }

    _textNode = [ASTextNode new];
    [self addSubnode:_textNode];

    _seprateLine = [ASDisplayNode new];
    [self addSubnode:_seprateLine];
    _seprateLineInset = UIEdgeInsetsMake(0, 0, 0, 0);


    return self;
}

- (void)didLoad {
    [super didLoad];

    _seprateLine.backgroundColor = [UIColor blackColor];
    self.backgroundColor = [UIColor lightTextColor];
}

- (void)layout {
    [super layout];

    _seprateLine.x = _seprateLineInset.left;
    _seprateLine.width = self.width - (_seprateLineInset.left + _seprateLineInset.right);
    _seprateLine.height = 0.5;
    _seprateLine.y = self.height - _seprateLine.height;

}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {

    ASInsetLayoutSpec *insetLayoutSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(8, 8, 8, 8)
                                                                                child:_textNode];
    return insetLayoutSpec;
}
@end
