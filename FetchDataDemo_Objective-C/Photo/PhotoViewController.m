//
//  ViewController.m
//  FetchDataDemo_Objective-C
//
//  Created by Neal Xiao on 2020/5/14.
//  Copyright © 2020 NealXiao. All rights reserved.
//

#import "PhotoViewController.h"
#import "UITableView+NAHelper.h"
#import "PhotoTableViewCell.h"
#import <Masonry.h>
@interface PhotoViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
    // Do any additional setup after loading the view.
}

- (void)setupTableView {
    self.tableView = [UITableView new];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNibForCellClassName:NSStringFromClass(PhotoTableViewCell.class)];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.leading.equalTo(self.view.mas_leading);
        make.trailing.equalTo(self.view.mas_trailing);
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
    }];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PhotoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(PhotoTableViewCell.class) forIndexPath:indexPath];
    cell.photoName.text = @"Test";
    cell.photoName.backgroundColor = [UIColor brownColor];
    cell.photoImage.image = [UIImage imageNamed:@"TestImage"];
    return cell;
}


@end
