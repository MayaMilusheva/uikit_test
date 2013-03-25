//
//  SeconViewController.m
//  uikit_test
//
//  Created by Maya Milusheva on 3/20/13.
//  Copyright (c) 2013 Maya Milusheva. All rights reserved.
//

#import "SeconViewController.h"

@interface SeconViewController ()

@end

@implementation SeconViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [content count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Formal";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                       reuseIdentifier:CellIdentifier] ;
    }
    
    cell.textLabel.text = [content objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setIsAccessibilityElement:YES];
    [self.tableView setAccessibilityLabel:@"tableView"];
    content = [[NSMutableArray alloc] init];
    
    [self.textField setIsAccessibilityElement:YES];
    [self.textField setAccessibilityLabel:@"textField"];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)OnAddText:(id)sender {
    [content addObject:self.textField.text];
    [self.tableView reloadData];
}
@end
