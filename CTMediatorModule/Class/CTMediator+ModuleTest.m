//
//  CTMediator+ModuleTest.m
//  CTMediator-ZW
//
//  Created by 崔冰smile on 2019/7/1.
//

#import "CTMediator+ModuleTest.h"

NSString *const kTarget_ModeuleTest = @"ModuleTestView";
NSString *const kAction_ModeuleTest = @"CCModuleTestView";

@implementation CTMediator (ModuleTest)

- (UIView *)moduleViewWithParams:(NSDictionary *)params {
    UIView *view = [self performTarget:kTarget_ModeuleTest action:kAction_ModeuleTest params:params shouldCacheTarget:YES];
    return view;
}
@end
