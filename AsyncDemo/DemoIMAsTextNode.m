//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#import "DemoIMAsTextNode.h"
#import "DemoMsgBaseModel.h"

@implementation DemoIMAsTextNode {

}

- (instancetype)initWithMsgModel:(DemoMsgBaseModel *)model {
    self = [super initWithMsgModel:model];
    if (!self) {
        return nil;
    }

    _contentTextNode = [ASTextNode new];
    _contentTextNode.flexGrow = YES;
    [self.msgBody addSubnode:_contentTextNode];

    self.model = model;

    return self;
}

- (void)didLoad {
    [super didLoad];
    
    self.msgBody.layer.backgroundColor = [UIColor blueColor].CGColor;
    _contentTextNode.backgroundColor = [UIColor brownColor];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {

    ASLayoutSpec *superSpec = [super layoutSpecThatFits:constrainedSize];

    
    ASInsetLayoutSpec *insetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(8, 0, 8, 8)
                                                                          child:_contentTextNode];
    insetSpec.parent = self.msgBody;
    
    return [ASStaticLayoutSpec staticLayoutSpecWithChildren:@[superSpec, insetSpec]];
}

- (void)setModel:(DemoMsgBaseModel *)model {
    [super setModel:model];
    _contentTextNode.attributedText = [[NSAttributedString alloc] initWithString:model.msgBody
                                                                attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]}];
}
@end
