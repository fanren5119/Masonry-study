//
//  SecondViewController.m
//  MasonryTest
//
//  Created by 王磊 on 16/3/28.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "SecondViewController.h"
#import "Masonry.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [self setupEqualSizeContraint:view];
}

/**
 *  view2在view1的右边，距离为10
 *
 *  @param backgroundView 父视图
 */
- (void)setupConstraints:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@60);
        make.height.equalTo(@150);
        
        //view2在view1的右边
        make.left.equalTo(view1.mas_right).with.offset(10);
        make.top.equalTo(@20);
        
        /**
         * view2在view1的下边
         *      make.top.equalTo(view1.mas_bottom).with.offset(10);
         *      make.left.equalTo(@20);
         */
    }];
}


/**
 *  view1与view2上下左右对齐
 *
 *  @param backgroundView 父视图
 */
- (void)setupEdgesContraints:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@60);
        make.height.equalTo(@150);
        
        /**
         *  左对齐
         *  make.top.equalTo(view1.mas_bottom).with.offset(10);
         *  make.leading.equalTo(view1.mas_leading);
         */
        
        //上对齐
        make.left.equalTo(view1.mas_right).with.offset(10);
        make.top.equalTo(view1.mas_top);
    }];
}


- (void)setCenterContraint:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@50);
        make.height.equalTo(@50);
        /**
         *  居中对齐
            make.center.equalTo(view1);
         */
        
        /**
         *  水平对齐
            make.left.equalTo(view1.mas_right).with.offset(10);
            make.centerY.equalTo(view1);
         */
        
        //垂直对齐
        make.top.equalTo(view1.mas_bottom).with.offset(10);
        make.centerX.equalTo(view1);
    }];
}


- (void)setupEqualSizeContraint:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(@(-10));
        make.right.equalTo(@(-10));
        
        /**
         *  等宽等高
            make.size.equalTo(view1);
         */
        
        /**
         *  等宽
            make.width.equalTo(view1);
            make.height.equalTo(@40);
         */
        
        //等高
        make.width.equalTo(@40);
        make.height.equalTo(view1);
    }];
}

@end
