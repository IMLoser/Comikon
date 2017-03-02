//
//  StartPage.h
//  Comikon
//
//  Created by 张旭辉 on 17/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class StartPage;
@protocol StartPageDelegate <NSObject>
- (void)dismissStartPage:(UIViewController *)controller;
@end

@interface StartPage : UIView

/**id*/
@property(nonatomic,weak) id<StartPageDelegate>delegate;


@end
