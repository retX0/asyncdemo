//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IMUser;
@class IMMsg;

typedef NS_ENUM(NSUInteger, DemoAsMsgType) {
    DemoAsMsgTypeText,
    DemoAsMsgTypeImage,
    DemoAsMsgTypeVideo,
    DemoAsMsgTypeNotice,
    DemoAsMsgTypeActive,
    DemoAsMsgTypeTime,
    DemoAsMsgTypeAnser,
    DemoAsMsgTypeQuestion,
};

@interface DemoMsgBaseModel :NSObject

@property (nonatomic, strong) NSString *username;
@property (nonatomic, assign) BOOL isAdmin;
@property (nonatomic, strong) NSString *msgBody;

@end
