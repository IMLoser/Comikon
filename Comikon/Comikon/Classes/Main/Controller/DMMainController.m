//
//  DMMainController.m
//  Comikon
//
//  Created by 曹航玮 on 2017/2/28.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "DMMainController.h"

@interface DMMainController ()

@end

@implementation DMMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

+ (void)initialRootViewControllerWith:(keyWindowBlock)block {

    UIWindow * keyWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    keyWindow.backgroundColor = [UIColor whiteColor];
    keyWindow.rootViewController = [[DMMainController alloc] init];
    [keyWindow makeKeyAndVisible];
    block(keyWindow);
}

@end
