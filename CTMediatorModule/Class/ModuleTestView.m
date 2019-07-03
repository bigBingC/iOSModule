//
//  ModuleTestView.m
//  iOSModuleDemo
//
//  Created by 崔冰smile on 2019/7/1.
//  Copyright © 2019 Ziwutong. All rights reserved.
//

#import "ModuleTestView.h"

@interface ModuleTestView ()
@property (nonatomic, strong) UILabel *lblTitle;
@end

@implementation ModuleTestView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews {
    [self addSubview:self.lblTitle];
}

- (void)setTitleStr:(NSString *)titleStr {
    _titleStr = titleStr;
    self.lblTitle.text = titleStr;
}

- (UILabel *)lblTitle {
    if (!_lblTitle) {
        _lblTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 30)];
        _lblTitle.text = @"测试组件化--解耦合";
    }
    return _lblTitle;
}

@end
