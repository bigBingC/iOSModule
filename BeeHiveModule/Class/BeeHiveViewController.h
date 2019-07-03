//
//  BeeHiveViewController.h
//  iOSModuleDemo
//
//  Created by 崔冰smile on 2019/7/2.
//  Copyright © 2019 Ziwutong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BeeServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BeeHiveViewController : UIViewController<BeeServiceProtocol>
@property (nonatomic, copy) NSString *tipsStr;
@end

NS_ASSUME_NONNULL_END
