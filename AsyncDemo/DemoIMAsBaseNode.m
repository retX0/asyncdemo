//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#import "DemoIMAsBaseNode.h"
#import "DemoMsgBaseModel.h"

@implementation DemoIMAsBaseNode {

}

- (instancetype)initWithMsgModel:(DemoMsgBaseModel *)model {

    self = [super init];
    if (!self) {
        return nil;
    }

    _avatarImageNode = [ASNetworkImageNode new];
    _avatarImageNode.imageModificationBlock = ^UIImage *(UIImage *image) {

        UIImage *modifiedImage;
        CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);

        UIGraphicsBeginImageContextWithOptions(image.size, false, [[UIScreen mainScreen] scale]);

        [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:kMsgCellUserHeadViewHeight] addClip];
        [image drawInRect:rect];
        modifiedImage = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();

        return modifiedImage;

    };
    [self addSubnode:_avatarImageNode];

    _avatarCoverImageNode = [ASNetworkImageNode new];
    [self addSubnode:_avatarCoverImageNode];
    _roleLabel = [ASTextNode new];
    [self addSubnode:_roleLabel];
    _nameLabel = [ASTextNode new];
    [self addSubnode:_nameLabel];
    _msgBody = [ASControlNode new];
    [self addSubnode:_msgBody];

    self.model = model;

    return self;
}
- (instancetype)init {

    NSAssert(false, @" call initWithMsgModel");
    return nil;
}

- (void)didLoad {
    [super didLoad];

    _seprateLine.hidden = YES;
    _avatarImageNode.contentMode = UIViewContentModeScaleAspectFill;
    _avatarImageNode.defaultImage = [UIImage imageNamed:@"default_user_100"];
}

- (void)layout {
    [super layout];
    

}
- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {

    _avatarImageNode.preferredFrameSize = CGSizeMake(kMsgCellUserHeadViewWidth, kMsgCellUserHeadViewHeight);

    ASStackLayoutSpec *avatarStackSpec = [ASStackLayoutSpec new];
    avatarStackSpec.direction = ASStackLayoutDirectionVertical;
    avatarStackSpec.horizontalAlignment = ASHorizontalAlignmentMiddle;
    avatarStackSpec.spacing = 8;
    avatarStackSpec.children = @[_avatarImageNode, _roleLabel];

    ASStackLayoutSpec *contentSpec = [ASStackLayoutSpec new];
    contentSpec.direction = ASStackLayoutDirectionVertical;
    contentSpec.horizontalAlignment = ASHorizontalAlignmentLeft;
    contentSpec.spacing = 8;
    contentSpec.children = @[_nameLabel, _msgBody];
    contentSpec.flexShrink = YES;

    ASStackLayoutSpec *stackLayoutSpec = [ASStackLayoutSpec new];
    stackLayoutSpec.direction = ASStackLayoutDirectionHorizontal;
    stackLayoutSpec.verticalAlignment = ASVerticalAlignmentTop;
    stackLayoutSpec.spacing = 8;
    stackLayoutSpec.children = @[avatarStackSpec, contentSpec];

    ASInsetLayoutSpec *insetLayoutSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(10, 10, 10, 10)
                                                                                child:stackLayoutSpec];

    return insetLayoutSpec;
}

- (void)setModel:(DemoMsgBaseModel *)model {

    _model = model;
    _nameLabel.attributedText = [[NSAttributedString alloc] initWithString:model.username
                                                                attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]}];
}

@end
