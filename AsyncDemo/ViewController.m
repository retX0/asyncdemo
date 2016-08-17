//
//  ViewController.m
//  AsyncDemo
//
//  Created by Xaviar on 16/8/15.
//  Copyright © 2016年 Xaviar. All rights reserved.
//

#import "ViewController.h"
#import "DemoAsBaseCell.h"
#import "DemoIMAsTextNode.h"
#import "DemoMsgBaseModel.h"

@interface ViewController ()<ASTableDelegate, ASTableDataSource>

@end

@implementation ViewController

- (instancetype)init {
    
    _tableNode = [ASTableNode new];
    self = [super initWithNode:_tableNode];
    if (!self) {
        return nil;
    }
    
    _tableNode.delegate = self;
    _tableNode.dataSource = self;
    _tableItems = [self modelArray];
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _tableItems.count;
}

- (ASCellNodeBlock)tableView:(ASTableView *)tableView nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath {
    ASCellNode *(^ASCellNodeBlock)() = ^ASCellNode *() {
        DemoMsgBaseModel *model = [_tableItems objectAtIndex:indexPath.row];
        DemoIMAsTextNode *cellNode = [[DemoIMAsTextNode alloc] initWithMsgModel:model];
        return cellNode;
    };
    return ASCellNodeBlock;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray*)modelArray {
    
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0; i < 100; ++i) {
        [array addObject:[DemoMsgBaseModel new]];
    }
    return array;
}

@end
