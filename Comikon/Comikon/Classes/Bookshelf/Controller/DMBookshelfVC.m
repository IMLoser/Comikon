//
//  DMBookshelfVC.m
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "DMBookshelfVC.h"

@interface DMBookshelfVC ()

@end

@implementation DMBookshelfVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView * imgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"timg"]];
    imgV.frame = self.view.bounds;
    [self.view addSubview:imgV];
    
}

@end
