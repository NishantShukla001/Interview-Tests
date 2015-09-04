//
//  ListView.m
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "ListView.h"

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

-(void)updateInformation
{
    [tableViewList reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
//  cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}




@end
