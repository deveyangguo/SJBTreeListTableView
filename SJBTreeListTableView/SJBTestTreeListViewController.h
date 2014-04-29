//
//  SJBTestTreeListViewController.h
//  SJBTreeListTableView
//
//  Created by Buddy on 29/4/14.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "SJBBaseTreeListViewController.h"

@interface SJBTestTreeListViewController : SJBBaseTreeListViewController

///创建自己的tableView和resultArray
@property (strong, nonatomic) UITableView *myTableView;
@property (strong, nonatomic) NSMutableArray *myResultArray;

@end
