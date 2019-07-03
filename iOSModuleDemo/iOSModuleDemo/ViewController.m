//
//  ViewController.m
//  iOSModuleDemo
//
//  Created by 崔冰smile on 2019/7/1.
//  Copyright © 2019 Ziwutong. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "CTMediator+ModuleTest.h"
#import <BeeHive/BeeHive.h>
#import "BeeServiceProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"组件化";
    
    UIButton *btnCTMediator = [[UIButton alloc] init];
    [btnCTMediator setTitle:@"CTMediator" forState:UIControlStateNormal];
    [btnCTMediator setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btnCTMediator addTarget:self action:@selector(clickCTMediatorButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCTMediator];
    
    UIButton *btnBeeHive = [[UIButton alloc] init];
    [btnBeeHive setTitle:@"BeeHive" forState:UIControlStateNormal];
    [btnBeeHive setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btnBeeHive addTarget:self action:@selector(clickBeeHiveButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnBeeHive];
    
    [btnCTMediator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(100);
        make.left.equalTo(self.view.mas_left).offset(100);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(30);
    }];
    
    [btnBeeHive mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(btnCTMediator.mas_bottom).offset(20);
        make.left.equalTo(self.view.mas_left).offset(100);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(30);
    }];
}

- (void)clickCTMediatorButton {
    UIView *view = [[CTMediator sharedInstance] moduleViewWithParams:@{@"titleStr":@"这是个参数--CTMediator"}];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(400);
        make.left.equalTo(self.view.mas_left).offset(100);
        make.right.equalTo(self.view.mas_right).offset(-100);
        make.height.mas_equalTo(200);
    }];
}

- (void)clickBeeHiveButton {
    id<BeeServiceProtocol> beeViewController = [[BeeHive shareInstance] createService:@protocol(BeeServiceProtocol)];
    if ([beeViewController isKindOfClass:[UIViewController class]]) {
        [beeViewController beeViewControllerParams:@"这个是个参数--beehive"];
        UIViewController *beeVC = (UIViewController *)beeViewController;
        [self.navigationController pushViewController:beeVC animated:YES];
    }
}

@end
