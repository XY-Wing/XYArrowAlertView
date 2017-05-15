//
//  XYArrowAlertView.m
//  WebSocketTest
//
//  Created by Xue Yang on 2017/5/15.
//  Copyright © 2017年 Xue Yang. All rights reserved.
//

#import "XYArrowAlertView.h"
#import <Masonry.h>

@interface XYArrowAlertView()

@property(nonatomic,strong)UILabel *titleLab;
@property(nonatomic,strong)UIImageView *arrowImgV;
@property(nonatomic,strong)UILabel *contentLab;
@property(nonatomic,strong)UIView *view;
@property(nonatomic,copy)NSString *contentStr;
@end

@implementation XYArrowAlertView
- (instancetype)initWithFrame:(CGRect)frame alertContentString:(NSString *)contentStr withSpecificUI:(UIView *)view
{
    if (self = [super initWithFrame:frame]) {
        _view = view;
        _contentStr = contentStr;
        UITapGestureRecognizer *g = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clicked)];
        [self addGestureRecognizer:g];
    }
    return self;
}
- (void)clicked
{
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        _arrowImgV.transform = CGAffineTransformMakeScale(0.01, 0.01);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
}
- (void)updateConstraints
{
    [self setupArrowAlertViewUI:_view];
    [super updateConstraints];
    
}

- (void)setupArrowAlertViewUI:(UIView *)view
{
    _arrowImgV = [[UIImageView alloc] init];
    if (view.frame.origin.x > [UIScreen mainScreen].bounds.size.width * 0.5) {
        _arrowImgV.image = [UIImage imageNamed:@"alertImg-1"];
    } else {
        _arrowImgV.image = [UIImage imageNamed:@"alertImg"];
    }
    
    [self addSubview:_arrowImgV];
    [_arrowImgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(view.mas_top).offset(-2);
        //40为图片边缘到三角形顶尖的水平距离
        if (view.frame.origin.x > [UIScreen mainScreen].bounds.size.width * 0.5) {
            make.right.equalTo(view.mas_right).offset(40 - view.frame.size.width*0.5);
            make.left.greaterThanOrEqualTo(@(10));
        } else {
            make.left.equalTo(view.mas_left).offset(-40 + view.frame.size.width* 0.5);
            make.right.lessThanOrEqualTo(@(-10));
        }
        
    }];
    
    _arrowImgV.transform = CGAffineTransformMakeScale(0.01, 0.01);
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.65 initialSpringVelocity:1 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        _arrowImgV.transform = CGAffineTransformIdentity;
    } completion:nil];
    
    
    _titleLab = [[UILabel alloc] init];
    _titleLab.text = @"还有以下人员处于待审批状态：";
    _titleLab.numberOfLines = 0;
    _titleLab.font = [UIFont systemFontOfSize:14];
    _titleLab.textColor = [UIColor whiteColor];
    [_arrowImgV addSubview:_titleLab];
    [_titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(@10);
        make.right.lessThanOrEqualTo(@(-10));
    }];
    
    _contentLab = [[UILabel alloc] init];
    _contentLab.text = _contentStr;
    _contentLab.numberOfLines = 0;
    _contentLab.font = [UIFont systemFontOfSize:14];
    _contentLab.textColor = [UIColor whiteColor];
    [_arrowImgV addSubview:_contentLab];
    [_contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(_titleLab);
        make.top.equalTo(_titleLab.mas_bottom).offset(5);
        make.bottom.lessThanOrEqualTo(_arrowImgV.mas_bottom).offset(-25);
        
    }];
    
}
//- (void)dealloc
//{
//    NSLog(@"%@",self);
//}
@end
