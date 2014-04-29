//
//  SJBTestTreeListViewController.m
//  SJBTreeListTableView
//
//  Created by Buddy on 29/4/14.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "SJBTestTreeListViewController.h"

@interface SJBTestTreeListViewController ()

@end

@implementation SJBTestTreeListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"可展开的表格";
    
    ///这里的resultArray可以根据需求自己定义。
    self.myResultArray = [NSMutableArray arrayWithArray:self.treeResultArray];
    ///这里的tableView可以根据需求自己定义。
    self.myTableView = self.treeTableView;
}


#pragma mark - =================自己写的tableView================================

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.myResultArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ///这里需要根据自己的resulArray数据结构重写父类了。
    return [super tableView:tableView numberOfRowsInSection:section];
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [super tableView:tableView viewForHeaderInSection:section];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return [super tableView:tableView heightForHeaderInSection:section];
}

-(void)tapAction:(UIButton *)sender{
    
    [super tapAction:sender];
    [self.myTableView reloadSections:[NSIndexSet indexSetWithIndex:sender.tag] withRowAnimation:UITableViewRowAnimationFade];
}

///这个都没有执行。。。
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [super tableView:tableView cellForRowAtIndexPath:indexPath];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
