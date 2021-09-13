//
//  VideoCheckController.h
//  ArcSoftFaceEngineDemo
//
//  Created by noit on 2018/9/5.
//  Copyright © 2018年 ArcSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, OpetateType) {
        OpetateTypeRegister,
        OpetateTypeLogin,
};
@interface VideoCheckController : UIViewController
@property (nonatomic, assign) OpetateType operateType;
@end
