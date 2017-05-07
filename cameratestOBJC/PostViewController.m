//
//  PostViewController.m
//  cameratestOBJC
//
//  Created by Silicon Hacks on 5/6/17.
//  Copyright © 2017 Silicon Hacks. All rights reserved.
//

#import "PostViewController.h"
#import "SimpleTableCell.h"

@interface PostViewController ()

@end

@implementation PostViewController
@synthesize tableData;
@synthesize desData;


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
    cell.desLabel.text = [NSString stringWithFormat:@"description"];
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
    tableData = [NSArray arrayWithObjects:@"Vandalism", @"Crime", @"Graffiti", @"Shooting", @"Pot Hole", @"Drug Dealing", @"Public Nudity", @"Stabbing", @"Cocaine", @"Robbery", @"Kidnapping", @"Burglary", @"Arson", @"Assult", @"Sexual Harassment", @"Homicide", nil];
    
    tableData = [NSArray arrayWithObjects:@"This is good", @"Custom", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
