//
//  Transport.m
//  task1
//
//  Created by Anton Lozovsky on 10/26/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "Transport.h"

@implementation Transport

@synthesize Name = _Name;
-(NSString *)Name
{
    return _Name;
}
-(void)setName:(NSString *)Name
{
    _Name = Name;
}

@end
