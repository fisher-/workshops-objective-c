//
//  ATMAtendee.m
//  first-app
//
//  Created by fisher on 07.11.2014.
//

#import "ATMAttendee.h"

@implementation ATMAttendee

+ (instancetype)attendeeWithName:(NSString *)name {
    return [[ATMAttendee alloc] initWithName:name];
}

- (void)signalNeedCoffee {
    [self.delegate attendeeNeedsCoffee:self];
}

@end
