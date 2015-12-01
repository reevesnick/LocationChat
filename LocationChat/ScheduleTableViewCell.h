//
//  ScheduleTableViewCell.h
//  LocationChat
//
//  Created by Neegbeah Reeves on 11/12/15.
//
//

#import <UIKit/UIKit.h>
#import "ScheduleObject.h"

@interface ScheduleTableViewCell : UITableViewCell

@property(weak,nonatomic)IBOutlet UILabel *classNameLabel;
@property(weak,nonatomic)IBOutlet UILabel *teacherLabel;
@property(weak,nonatomic)IBOutlet UIDatePicker * startDateLabel;
@property(weak,nonatomic)IBOutlet UIDatePicker *endDateLabel;

@end
