//
//  ScheduleObject.h
//  LocationChat
//
//  Created by Neegbeah Reeves on 11/12/15.
//
//

#import <Foundation/Foundation.h>

@interface ScheduleObject : NSObject

@property (strong,nonatomic)NSString *className;
@property (strong,nonatomic)NSString *teacher;
@property (strong,nonatomic)NSDate* startDate;
@property (strong,nonatomic)NSDate* endDate;


@end
