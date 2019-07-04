//
//  BeeModule.m
//  BeeHive
//
//  Created by 崔冰smile on 2019/7/2.
//

#import "BeeModule.h"
#import "BeeHiveViewController.h"

//@BeeHiveMod(BeeModule)

@implementation BeeModule
//在启动之后第一屏内容展现之前异步执行模块的初始化，可以优化启动时时间消耗
BH_EXPORT_MODULE(YES)

- (void)modInit:(BHContext *)context {
    //注册模块的接口服务
    [[BeeHive shareInstance] registerService:@protocol(BeeServiceProtocol) service:[BeeHiveViewController class]];
}
@end
