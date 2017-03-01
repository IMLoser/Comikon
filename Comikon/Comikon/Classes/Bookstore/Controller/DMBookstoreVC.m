//
//  DMBookstoreVC.m
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

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
    
    NSLog(@"%zd", selectedIndex);
}

@end
