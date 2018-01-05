//
//  ViewController.m
//  分组样式
//
//  Created by mo on 2018/1/5.
//  Copyright © 2018年 momo. All rights reserved.
//

#import "ViewController.h"
#import "HeaderTableViewCell.h"
#import "moTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView_main;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HeaderTableViewCell *header = [[[NSBundle mainBundle] loadNibNamed:@"HeaderTableViewCell" owner:nil options:nil] lastObject];
    
    self.tableView_main.tableHeaderView = header;
    self.tableView_main.separatorStyle = UITableViewCellSeparatorStyleNone;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"moTableViewCell";
    moTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:ID bundle:nil] forCellReuseIdentifier:ID];
        cell = [tableView dequeueReusableCellWithIdentifier:ID];
    }
    
    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        return 50.0;
    }
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  80.0;
    
}


@end
