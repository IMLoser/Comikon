//
//  DMTitleSelectedView.m
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "DMTitleSelectedView.h"

@interface DMTitleSelectedView ()

/**
 *  保存按钮的数组
 */
@property (copy, nonatomic) NSMutableArray * buttonArray;

/**
 *  动画view
 */
@property (nonatomic, strong) UIView * animationView;

/**
 *  当前索引
 */
@property (assign, nonatomic) NSUInteger currentIndex;

@end

@implementation DMTitleSelectedView

+ (instancetype)titleSelectedViewWith:(NSArray<NSString *> *)array
                                 size:(CGSize)size
                          andDelegate:(id<DMTitleSelectedViewDelegate>)delegate {
    
    DMTitleSelectedView * titleSelectedView = [[DMTitleSelectedView alloc] init];
    titleSelectedView.bounds = CGRectMake(0, 0, size.width, size.height);
    titleSelectedView.delegate = delegate;
    
    // 创建选择按钮
    [titleSelectedView initialButtonsWithArray:array];
    
    return titleSelectedView;
}

- (void)initialButtonsWithArray:(NSArray *)array {
    
    for (NSInteger count = 0; count < array.count; count++) {
        
        UIButton * btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        btn.tag = count;
        [btn setTitle:array[count] forState:(UIControlStateNormal)];
        [btn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
        [btn addTarget:self action:@selector(selectedClick:) forControlEvents:(UIControlEventTouchUpInside)];
        [self addSubview:btn];
        [self.buttonArray addObject:btn];
    }
    
    self.animationView = [[UIView alloc] init];
    self.animationView.backgroundColor = [UIColor whiteColor];
    self.animationView.layer.cornerRadius = 2;
    self.animationView.layer.masksToBounds = YES;
    [self addSubview:self.animationView];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    for (NSInteger count = 0; count < self.buttonArray.count; count++) {
        CGFloat btnH = self.frame.size.height - 15;
        CGFloat btnW = self.frame.size.width / self.buttonArray.count;
        CGFloat btnX = count * btnW;
        CGFloat btnY = 5;
        [self.buttonArray[count] setFrame:CGRectMake(btnX, btnY, btnW, btnH)];
    }
    
    CGFloat aniViewW = self.frame.size.width / self.buttonArray.count / 3;
    CGFloat aniViewH = 4;
    CGFloat aniViewX = aniViewW + aniViewW * 2 * _currentIndex;
    CGFloat aniViewY = self.frame.size.height - 5;
    self.animationView.frame = CGRectMake(aniViewX, aniViewY, aniViewW, aniViewH);
}

#pragma mark - 监听方法
- (void)selectedClick:(UIButton *)selectedBtn {
    
    _currentIndex = selectedBtn.tag;
    CGFloat aniViewW = self.frame.size.width / self.buttonArray.count / 3;
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect tmpF = self.animationView.frame;
        tmpF.origin.x = aniViewW + aniViewW * 3 * _currentIndex;
        self.animationView.frame = tmpF;
    }];
    
    if ([self.delegate respondsToSelector:@selector(titleSelectedView:selectedIndex:)]) {
        [self.delegate titleSelectedView:self selectedIndex:selectedBtn.tag];
    }
}

#pragma mark - lazy
- (NSMutableArray *)buttonArray {
    
    if (!_buttonArray) {
        _buttonArray = [NSMutableArray array];
    }
    return _buttonArray;
}

@end
