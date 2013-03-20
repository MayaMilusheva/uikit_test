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
        // Custom initialization
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setIsAccessibilityElement:YES];
    [self.tableView setAccessibilityLabel:@"tableView"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
