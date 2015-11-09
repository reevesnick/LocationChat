//
//  ViewController.m
//  ToDoList
//
//  Created by Brittany Simmons on 11/6/15.
//  Copyright © 2015 Brittany Simmons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize notes;
@synthesize noteTitleText;
@synthesize noteBlockTableView;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [notes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *tableViewTitle;
    tableViewTitle = [notes objectAtIndex:[indexPath row]];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    [[cell textLabel] setText:[tableViewTitle objectForKey:@"cellTitle"]];
    return cell;
}


- (IBAction)addNote {
    NSDictionary *tableViewTitle;
    tableViewTitle = [[NSDictionary alloc] initWithObjectsAndKeys:[noteTitleText text], @"cellTitle", nil];
    [notes addObject:tableViewTitle];
    [noteBlockTableView reloadData];
    noteTitleText.text = @"";
}



- (void)viewDidLoad {
    notes = [[NSMutableArray alloc] init];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
