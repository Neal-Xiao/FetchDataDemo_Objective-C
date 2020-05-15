//
//  UITableView+NAHelper.h
//  FetchDataDemo_Objective-C
//
//  Created by Neal Xiao on 2020/5/15.
//  Copyright © 2020 NealXiao. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (NAHelper)

- (void)registerNibForCellClassName:(NSString *)cellClassName;
- (void)registerClassForCellClassName:(NSString *)cellClassName;

@end

NS_ASSUME_NONNULL_END
