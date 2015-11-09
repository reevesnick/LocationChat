//
//  ViewController.h
//  ToDoList
//
//  Created by Brittany Simmons on 11/6/15.
//  Copyright © 2015 Brittany Simmons. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate;
@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *notes;
@property (nonatomic, strong) IBOutlet UITextField *noteTitleText;
@property (nonatomic, strong) IBOutlet UITableView *noteBlockTableView;


@end

