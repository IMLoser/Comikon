//
//  StartPage.m
//  Comikon
//
//  Created by 张旭辉 on 17/3/1.
//  Copyright © 2017年 曹航玮. All rights reserved.
//

#import "StartPage.h"

@interface StartPage() <UIGestureRecognizerDelegate>

/**默认图片*/
@property(nonatomic,weak) UIImageView *imageView;
/**添加图片*/
@property(nonatomic,weak) UIImageView *smallImageView;
/**退出按钮*/
@property(nonatomic,weak) UIButton *quitBtn;
@end

@implementation StartPage

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatPage];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self creatPage];
}

- (void)creatPage {
    
    UIImageView * imageView = [[UIImageView alloc] init];
    [self addSubview:imageView];
    self.imageView = imageView;
    UIImageView * smallImageView = [[UIImageView alloc] init];
    [self addSubview:smallImageView];
    self.smallImageView = smallImageView;
    NSUInteger screenWidth = [UIScreen mainScreen].bounds.size.width;
    switch (screenWidth) {
        case 320:
            self.imageView.image = [UIImage imageNamed:@"5s_640942 .jpg_unsliced"];
            self.smallImageView.image = [UIImage imageNamed:@"750x1334.jpg_unsliced"];
            break;
        case 375:
            self.imageView.image = [UIImage imageNamed:@"6_7501107.jpg_unsliced"];
            self.smallImageView.image = [UIImage imageNamed:@"1242x2208.jpg_unsliced"];
            break;
        case 414:
            self.imageView.image = [UIImage imageNamed:@"6p_12421832 .jpg_unsliced"];
            self.smallImageView.image = [UIImage imageNamed:@"1536x2048.jpg_unsliced"];
            break;
        default:
            break;
            
    }
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"跳过 >>" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(skipPage) forControlEvents:UIControlEventTouchDown];
    self.quitBtn = btn;
    [self.smallImageView addSubview:btn];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(skipPage)];
    tap.numberOfTouchesRequired = 1;
    tap.delegate = self;
    [self.imageView setUserInteractionEnabled:YES];
    [self.smallImageView setUserInteractionEnabled:YES];
    [self.imageView addGestureRecognizer:tap];
    NSTimer *timer = [NSTimer timerWithTimeInterval:5.0 target:self selector:@selector(skipPage) userInfo:self repeats:NO];
    
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    

    
   }
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.imageView.image.size.height);
    
    self.smallImageView.frame = CGRectMake(0, self.imageView.image.size.height,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height - self.imageView.frame.size.height);
    NSDictionary *attrs = @{NSFontAttributeName : [UIFont boldSystemFontOfSize:17]};
    CGSize size=[self.quitBtn.titleLabel.text sizeWithAttributes:attrs];
    self.quitBtn.frame = CGRectMake(self.smallImageView.frame.size.width - size.width, 0, 70, 20);
    
    }


- (void)skipPage {
 
    [UIView animateWithDuration:2.0 animations:^{
        
        self.alpha = 0.0f;
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
    }];
}

@end
