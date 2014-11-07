//
//  main.m
//  first-app
//
//  Created by fisher on 07.11.2014.
//

#import <Foundation/Foundation.h>
#import "ATMAttendee.h"
#import "ATMWorkshop.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        ATMAttendee *attendee = [[ATMAttendee alloc] init];
        attendee.name = @"fisher";
        attendee.team = @"alfa";
        attendee.age = 99;
        attendee.ageAsNumber = [NSNumber numberWithInt:13];
        
        ATMWorkshop *workshop = [ATMWorkshop new];
        
//        workshop.attendees = [ @[ @"Tomek", @"Paweł", @"Adam" ] mutableCopy ];
//        [workshop.attendees addObject:@"Ewa"];
        
        [workshop addAttendee:attendee];
        
        NSLog(@"allAttendees: %@", [workshop allAttendees]);
        
        attendee.delegate = workshop;
        [attendee signalNeedCoffee];
    }
    return 0;
}
