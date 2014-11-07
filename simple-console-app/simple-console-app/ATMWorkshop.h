//
//  ATMWorkshop.h
//  first-app
//
//  Created by fisher on 07.11.2014.
//

#import <Foundation/Foundation.h>
#import "ATMAttendee.h"

@interface ATMWorkshop : NSObject <ATMAttendeeDelegate>

- (void)addAttendee:(ATMAttendee *)atendee;
- (void)removeAttendee:(ATMAttendee *)atendee;
- (NSArray *)allAttendees;

@end
