//
//  DMMainNavController.m
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "DMMainNavController.h"

@interface DMMainNavController ()

@end

@implementation DMMainNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor * backgroundColor = [UIColor colorWithRed:0 green:173 / 255.0 blue:239 / 255.0 alpha:1.0f];
    [self.navigationBar setBackgroundImage:[self createImageWithColor:backgroundColor] forBarMetrics:UIBarMetricsDefault];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (UIImage *)createImageWithColor: (UIColor *) color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect.size); // 开启图形上下文
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext(); // 从图形上下文中获取图片
    
    UIGraphicsEndImageContext(); // 关闭图形上下文
    
    return theImage;
    
}

@end
