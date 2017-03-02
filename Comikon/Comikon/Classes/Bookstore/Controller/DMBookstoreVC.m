//
//  DMBookstoreVC.m
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//  http://mhjk.1391.com/comic_v2/customerview?appVersionName=1.0.0&channel=appstore&viewtype=1&apptype=5&channelId=appstore&appversion=1.0.0&token=b12f57cebb1d8afee5583aed77bd2f78&osVersionCode=10.2&timestamp=1488395791.748284&appType=5&mobileModel=iPhone8,1

#import "DMBookstoreVC.h"
#import "DMTitleSelectedView.h"

@interface DMBookstoreVC ()<DMTitleSelectedViewDelegate>

@end

@implementation DMBookstoreVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.titleView = [DMTitleSelectedView titleSelectedViewWith:@[@"推荐",@"分类"] size:CGSizeMake(120, 35) andDelegate:self];
}

#pragma mark - DMTitleSelectedViewDelegate
- (void)titleSelectedView:(DMTitleSelectedView *)titleSelectedView
            selectedIndex:(NSInteger)selectedIndex {
    
    
}

@end
