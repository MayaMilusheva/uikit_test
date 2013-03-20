//
//  SeconViewController.h
//  uikit_test
//
//  Created by Maya Milusheva on 3/20/13.
//  Copyright (c) 2013 Maya Milusheva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeconViewController : UIViewController <UITableViewDataSource> {
    
    NSMutableArray* content;
}
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)OnAddText:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
