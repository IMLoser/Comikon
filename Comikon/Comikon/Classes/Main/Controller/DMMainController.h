//
//  DMMainController.h
//  Comikon
//
//  Created by 曹航玮 on 2017/2/28.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^keyWindowBlock)(UIWindow *keyWindow);

@interface DMMainController : UITabBarController

+ (void)initialRootViewControllerWith:(keyWindowBlock)block;

@end
