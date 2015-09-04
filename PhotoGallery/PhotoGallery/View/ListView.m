//
//  ListView.m
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "ListView.h"
#import "CustomCellCategory.h"

#define PADDING 10

#define HEADERLABELWIDTH 120
#define HEADERLABELHEIGHT 30

@interface ListView ()<UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *tableViewList;
    
}
@end

@implementation ListView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



-(void)updateInformation:(NSDictionary *)dictList
{
    dictListView = dictList;
    
    [tableViewList reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return dictListView.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *viewHeader = [[UIView alloc] initWithFrame:CGRectMake(tableView.frame.origin.x, 0, tableView.frame.size.width, tableView.frame.size.height)];
    
    NSArray *arrayKeys = [dictListView allKeys];
    UILabel *labelHeader = [[UILabel alloc] initWithFrame:CGRectMake(PADDING, PADDING/2 , HEADERLABELWIDTH, HEADERLABELHEIGHT)];
    [labelHeader setText:[arrayKeys objectAtIndex:section]];
    
    [viewHeader addSubview:labelHeader];
    
    return viewHeader;
}// custom view for header. will be adjusted to default or specified header height


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    CustomCellCategory *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[CustomCellCategory alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
     NSArray *arrayKeys = [dictListView allKeys];
    
    NSString *cellData = [arrayKeys objectAtIndex:[indexPath section]];
    NSArray *articleData = [dictListView objectForKey:cellData];
    [cell setCollectionData:articleData];
//  cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}




@end
