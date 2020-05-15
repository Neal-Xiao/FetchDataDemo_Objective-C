//
//  PhotoTableViewCell.h
//  FetchDataDemo_Objective-C
//
//  Created by Neal Xiao on 2020/5/15.
//  Copyright © 2020 NealXiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhotoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *photoName;
@property (weak, nonatomic) IBOutlet UIImageView *photoImage;

@end

NS_ASSUME_NONNULL_END
