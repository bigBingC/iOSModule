//
//  BeeHiveViewController.m
//  iOSModuleDemo
//
//  Created by 崔冰smile on 2019/7/2.
//  Copyright © 2019 Ziwutong. All rights reserved.
//

#import "BeeHiveViewController.h"
#import "CTMediator+ModuleTest.h"

@interface BeeHiveViewController () <BeeServiceProtocol>
@property (nonatomic, strong) UILabel *lblTips;
@end

@implementation BeeHiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createBaseView];
}

- (void)createBaseView {
    self.title = @"BeeHive";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.lblTips];
}

#pragma mark - method
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIView *view = [[CTMediator sharedInstance] moduleViewWithParams:@{@"titleStr":@"组件之间的调用--CTMediator"}];
    view.backgroundColor = [UIColor greenColor];
    view.frame = CGRectMake(100, 300, 300, 300);
    [self.view addSubview:view];
}

#pragma mark - delegate
- (void)beeViewControllerParams:(NSString *)tips {
    self.lblTips.text = tips;
}

#pragma mark - 初始化
- (UILabel *)lblTips {
    if (!_lblTips) {
        _lblTips = [[UILabel alloc] initWithFrame:CGRectMake(100, 200,200, 20)];
    }
    return _lblTips;
}


@end


