//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//


#import <AsyncDisplayKit.h>

@interface DemoAsBaseCell : ASCellNode {
    ASDisplayNode *_seprateLine;
    ASTextNode *_textNode;
}

@property (nonatomic, strong, readonly) ASDisplayNode *seprateLine;
@property (nonatomic, strong, readonly) ASTextNode *textNode;
@property (nonatomic, assign) UIEdgeInsets seprateLineInset;

@end
