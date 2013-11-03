//
//  Vehicle.m
//  task1
//
//  Created by Anton Lozovsky on 10/26/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

@synthesize Price;

+(id)initWithName:(NSString *)vehicleName andPrice:(NSNumber *)vehiclePrice
{
    // Vehicle *v = [Vehicle initWithNameAndPrice:@"ToTroeshina" vehiclePrice:[[NSNumber alloc] initWithInt:100]];
    Vehicle *result = [[Vehicle alloc] init];
    result.Name = vehicleName;
    result.Price = vehiclePrice;
    return result;
}

@end
