//
//  Target_Test.m
//  CTMediator-ZW
//
//  Created by 崔冰smile on 2019/7/1.
//

#import "Target_ModuleTestView.h"
#import "ModuleTestView.h"

@implementation Target_ModuleTestView
- (UIView *)Action_CCModuleTestView:(NSDictionary *)params {
    ModuleTestView *view = [[ModuleTestView alloc] init];
    view.titleStr = [params objectForKey:@"titleStr"];
    return view;
}
@end
