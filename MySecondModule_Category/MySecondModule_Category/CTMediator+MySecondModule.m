//
//  CTMediator+MySecondModule.m
//  MySecondModule_Category
//
//  Created by 黄成 on 2019/1/25.
//  Copyright © 2019 gjzq. All rights reserved.
//

#import "CTMediator+MySecondModule.h"

@implementation CTMediator (MySecondModule)
- (UIViewController *)MyFirstModule_secondModuleVC
{
    /*
     SecondModuleViewController *viewController = [[SecondModuleViewController alloc] init];
     */
    return [self performTarget:@"MySecondModule" action:@"nativeToSecondModuleVC" params:nil shouldCacheTarget:NO];
}

@end
