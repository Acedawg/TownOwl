//
//  FeedViewController.m
//  cameratestOBJC
//
//  Created by Silicon Hacks on 5/6/17.
//  Copyright © 2017 Silicon Hacks. All rights reserved.
//

#import "FeedViewController.h"
#import "SimpleTableCell.h"

@interface FeedViewController ()

@end

@implementation FeedViewController
@synthesize tableData;


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    // cell.desLabel.text = [desData objectAtIndex:indexPath.row];
    cell.titleLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.desLabel.textAlignment = NSTextAlignmentRight;
    cell.desLabel.text = [NSString stringWithFormat:@"1 mi"];
    // cell.titleLabel.text = [NSString stringWithFormat:@"hey"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"Shooting", @"Starbucks Coffee", @"Vegetable Curry", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

