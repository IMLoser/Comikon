//
//  DMTabbar.h
//  Comikon
//
//  Created by 曹航玮 on 2017/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DMTabbar;

@protocol DMTabbarDelegate  <NSObject>



@end

@interface DMTabbar : UIView

@property (nonatomic, weak) id<DMTabbarDelegate> delegate;

@end
