//
//  BeeModule.m
//  BeeHive
//
//  Created by 崔冰smile on 2019/7/2.
//

#import "BeeModule.h"
#import "BeeHiveViewController.h"

@BeeHiveMod(BeeModule)

@implementation BeeModule
//BH_EXPORT_MODULE(YES)
- (instancetype)init {
    if (self = [super init]) {
        [[BeeHive shareInstance] registerService:@protocol(BeeServiceProtocol) service:[BeeHiveViewController class]];
    }
    return self;
}

@end
