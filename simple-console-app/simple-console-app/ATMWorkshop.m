//
//  ATMWorkshop.m
//  first-app
//
//  Created by fisher on 07.11.2014.
//

#import "ATMWorkshop.h"

@interface ATMWorkshop()

@property NSMutableArray *attendees;

@end


@implementation ATMWorkshop

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        self.attendees = [NSMutableArray new];
    }
    return self;
}

- (void)addAttendee:(ATMAttendee *)attendee {
    [self.attendees addObject:attendee];
}

- (void)removeAttendee:(ATMAttendee *)attendee {
    [self.attendees removeObject:attendee];
}

- (NSArray *)allAttendees {
    return [self.attendees copy];
}

- (void)attendeeNeedsCoffee:(ATMAttendee *)attendee {
    NSLog(@"Giving coffee to attendee: %@", attendee.name);
}

@end
