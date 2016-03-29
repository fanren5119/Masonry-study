//
//  RatioViewController.m
//  MasonryTest
//
//  Created by 王磊 on 16/3/28.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "RatioViewController.h"
#import "Masonry.h"

@implementation RatioViewController

- (void)viewDidLoad
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [self setupEqualSizeContraint:view];
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
         *  宽高的比例啊
         make.size.equalTo(view1).multipliedBy(2);
         */
        
        /**
         *  宽的比例
         make.width.equalTo(view1).multipliedBy(2);
         make.height.equalTo(@40);
         */
        
        make.size.equalTo(view1).multipliedBy(2);

        //高的比例
        make.width.equalTo(@40);
        make.height.equalTo(view1).multipliedBy(2);
    }];
}


@end
