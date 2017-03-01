//
//  DMTitleSelectedView.h
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DMTitleSelectedView;

@protocol DMTitleSelectedViewDelegate <NSObject>

@optional
- (void)titleSelectedView:(DMTitleSelectedView *)titleSelectedView
            selectedIndex:(NSInteger)selectedIndex;

@end

@interface DMTitleSelectedView : UIView

@property (nonatomic, weak) id<DMTitleSelectedViewDelegate> delegate;

+ (instancetype)titleSelectedViewWith:(NSArray<NSString *> *)array size:(CGSize)size andDelegate:(id<DMTitleSelectedViewDelegate>)delegate;

@end
