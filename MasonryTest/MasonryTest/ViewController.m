//
//  ViewController.m
//  MasonryTest
//
//  Created by 王磊 on 16/3/28.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "BaseViewController.h"
#import "SecondViewController.h"
#import "RatioViewController.h"
#import "ThirdViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSouceArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];
    [self loadData];
}

- (void)setupUI
{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    __weak ViewController *vc = self;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(vc.view).offset(0);
        make.right.mas_equalTo(vc.view).offset(0);
        make.top.mas_equalTo(vc.view).offset(0);
        make.bottom.mas_equalTo(vc.view).offset(0);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSouceArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    cell.textLabel.text = self.dataSouceArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        BaseViewController *baseVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BaseVC"];
        [self.navigationController pushViewController:baseVC animated:YES];
    } else if (indexPath.row == 1) {
        SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
        [self.navigationController pushViewController:secondVC animated:YES];
    } else if (indexPath.row == 2) {
        RatioViewController *ratioVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RatioVC"];
        [self.navigationController pushViewController:ratioVC animated:YES];
    } else if (indexPath.row == 3) {
        ThirdViewController *thirdVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ThirdVC"];
        [self.navigationController pushViewController:thirdVC animated:YES];
    }
}

- (void)loadData
{
    self.dataSouceArray = @[@"与父视图的约束",
                            @"同等级的视图",
                            @"比例设置约束",
                            @"多个视图"];
}

@end
