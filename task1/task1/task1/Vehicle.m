//
//  Vehicle.m
//  task1
//
//  Created by Anton Lozovsky on 10/26/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

@synthesize Price = _Price;
-(NSNumber *)Price
{
    return _Price;
}
-(void)setPrice:(NSNumber *)Price
{
    _Price = Price;
}

+(Vehicle *)initWithNameAndPrice:(NSString *)vehicleName vehiclePrice:(NSNumber *)vehiclePrice
{
    // Vehicle *v = [Vehicle initWithNameAndPrice:@"ToTroeshina" vehiclePrice:[[NSNumber alloc] initWithInt:100]];
    Vehicle *result = [[Vehicle alloc] init];
    result.Name = vehicleName;
    result.Price = vehiclePrice;
    return result;
}

@end
