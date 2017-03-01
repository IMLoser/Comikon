//
//  DMMainController.m
//  Comikon
//
//  Created by 曹航玮 on 2017/2/28.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "DMMainController.h"
#import "DMMainNavController.h"
#import "DMTabbar.h"
#import "DMBookshelfVC.h"
#import "DMBookstoreVC.h"
#import "DMSettingsVC.h"

@interface DMMainController ()

@end

@implementation DMMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+ (void)initialRootViewControllerWith:(keyWindowBlock)block {

    UIWindow * keyWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [keyWindow makeKeyAndVisible];
    [keyWindow setRootViewController:[DMMainController initialChildControllers]];
    block(keyWindow);
}

+ (instancetype)initialChildControllers {
    
    DMMainController * rootVC = [[DMMainController alloc] init];
    rootVC.view.tintColor = [UIColor colorWithRed:0 green:173 / 255.0 blue:239 / 255.0 alpha:1.0f];
    
    [rootVC addChildViewController:[[DMBookshelfVC alloc] init]
                         withTitle:@"书架" iconImage:@"tab1-grey_32x32_" andIconSelectedImage:@"tab1_32x32_"];
    [rootVC addChildViewController:[[DMBookstoreVC alloc] init]
                         withTitle:@"书城" iconImage:@"tab2-grey_32x32_" andIconSelectedImage:@"tab2_32x32_"];
    [rootVC addChildViewController:[[DMSettingsVC alloc] init]
                         withTitle:@"设置" iconImage:@"tab3-grey_32x32_" andIconSelectedImage:@"tab3_32x32_"];
    
    rootVC.selectedIndex = 1;
    return rootVC;
}

- (void)addChildViewController:(UIViewController *)childController
                     withTitle:(NSString *)title
                     iconImage:(NSString *)iconImage andIconSelectedImage:(NSString *)iconSelectedImage {
    
    childController.tabBarItem.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:iconImage];
    DMMainNavController * nav = [[DMMainNavController alloc] initWithRootViewController:childController];
    [self addChildViewController:nav];
}
@end
