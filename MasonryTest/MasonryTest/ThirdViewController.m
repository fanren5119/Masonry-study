//
//  ThirdViewController.m
//  MasonryTest
//
//  Created by 王磊 on 16/3/28.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ThirdViewController.h"
#import "Masonry.h"

@implementation ThirdViewController

- (void)viewDidLoad
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [self setupSapceContraints:view];
}


- (void)setupSizeContraints:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor greenColor];
    [backgroundView addSubview:view3];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        
        make.size.equalTo(@[view2, view3]);
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view1.mas_right).offset(10);
        make.top.equalTo(@10);
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view2.mas_right).offset(10);
        make.top.equalTo(@10);
    }];
}

- (void)setupSapceContraints:(UIView *)backgroundView
{
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blackColor];
    [backgroundView addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [backgroundView addSubview:view2];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor greenColor];
    [backgroundView addSubview:view3];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(@[view2, view3]);
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.height.equalTo(view1.mas_width);
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view1.mas_right).offset(10);
        make.top.equalTo(@10);
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view2.mas_right).offset(10);
        make.top.equalTo(@10);
        make.right.equalTo(@(-10));
    }];
}

@end
