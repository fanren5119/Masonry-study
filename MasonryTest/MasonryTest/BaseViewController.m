//
//  BaseViewController.m
//  MasonryTest
//
//  Created by 王磊 on 16/3/28.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "BaseViewController.h"
#import "Masonry.h"

@implementation BaseViewController

- (void)viewDidLoad
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [self setupSizeContraints:view];
}

/**
 *  使用上下左右来设置约束
 *
 *  @param backgroundView 父视图
 */
- (void)setupConstraints:(UIView *)backgroundView
{
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.right.equalTo(@0);
        make.top.equalTo(@(-10));
        make.bottom.equalTo(@(-10));
        
        
//        make.edges.equalTo(UIEdgeInsetsMake(0, 0, -10, -10));
    }];
}

/**
 *  使用宽高来设置约束
 *
 *  @param backgroundView 父视图
 */
- (void)setupSizeContraints:(UIView *)backgroundView
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.top.equalTo(@0);
        
//        make.width.equalTo(@100);
//        make.height.equalTo(@100);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
}


- (void)setupCenterContraints:(UIView *)backgroundView
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));

//        make.centerX.equalTo(backgroundView);
//        make.centerY.equalTo(backgroundView);
        make.center.equalTo(backgroundView);
    }];
}

@end
