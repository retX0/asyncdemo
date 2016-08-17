//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#define kMsgCellUserHeadViewWidth 40
#define kMsgCellUserHeadViewHeight 40

#define kMsgCellTopPading 6
#define kMsgCellLeftPading 12

#define kAvatarVSpacing 12
#define kAvatarHSpacing 12

#import "DemoAsBaseCell.h"

@class DemoAsIMUserAvatarImageNode;
@class DemoMsgBaseModel;

@interface DemoIMAsBaseNode : DemoAsBaseCell

@property (nonatomic, strong) ASNetworkImageNode *avatarImageNode;
@property (nonatomic, strong) ASNetworkImageNode *avatarCoverImageNode;
@property (nonatomic, strong) ASTextNode *roleLabel;//avatar`s bottom label
@property (nonatomic, strong) ASTextNode *nameLabel;
@property (nonatomic, strong) ASControlNode *msgBody;
@property (nonatomic, strong) DemoMsgBaseModel *model;

- (instancetype)initWithMsgModel:(DemoMsgBaseModel *)model;

@end
