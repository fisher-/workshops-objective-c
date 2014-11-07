//
//  ATMAtendee.h
//  first-app
//
//  Created by fisher on 07.11.2014.
//

#import <Foundation/Foundation.h>

@class ATMAttendee;

@protocol ATMAttendeeDelegate <NSObject>

- (void)attendeeNeedsCoffee:(ATMAttendee *)attendee;

@end

@interface ATMAttendee : NSObject

@property NSString *name;
@property NSString *team;
@property NSNumber *ageAsNumber;
@property int age;
@property id<ATMAttendeeDelegate> delegate;

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithName:(NSString *)name team:(NSString *)team;

+ (instancetype)attendeeWithName:(NSString *)name;

- (void)signalNeedCoffee;

@end
