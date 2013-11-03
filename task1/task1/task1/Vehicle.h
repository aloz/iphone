//
//  Vehicle.h
//  task1
//
//  Created by Anton Lozovsky on 10/26/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "Transport.h"

@interface Vehicle : Transport

@property(readwrite) NSNumber *Price;

+(id)initWithName:(NSString *)vehicleName andPrice:(NSNumber *)vehiclePrice;

@end
