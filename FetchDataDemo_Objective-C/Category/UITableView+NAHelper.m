//
//  UITableView+NAHelper.m
//  FetchDataDemo_Objective-C
//
//  Created by Neal Xiao on 2020/5/15.
//  Copyright © 2020 NealXiao. All rights reserved.
//

#import "UITableView+NAHelper.h"

@implementation UITableView (NAHelper)

- (void)registerNibForCellClassName:(NSString *)cellClassName {
    [self registerNib:[UINib nibWithNibName:cellClassName bundle:nil] forCellReuseIdentifier:cellClassName];
}

- (void)registerClassForCellClassName:(NSString *)cellClassName {
    [self registerClass:NSClassFromString(cellClassName) forCellReuseIdentifier:cellClassName];
}

@end
