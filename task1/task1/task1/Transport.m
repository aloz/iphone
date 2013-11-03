//
//  Transport.m
//  task1
//
//  Created by Anton Lozovsky on 10/26/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "Transport.h"

@implementation Transport

-(void)setIsFavourite:(BOOL)IsFavourite {
    _isFavourite = IsFavourite;
}
-(BOOL)getIsFavourite {
    return _isFavourite;
}

-(void)setName:(NSString *)Name {
    _Name = Name;
}
-(NSString *)getName {
    return _Name;
}

-(void)setTicketPrice:(NSNumber *)TicketPrice {
    _TicketPrice = TicketPrice;
}
-(NSNumber *)getTicketPrice {
    return _TicketPrice;
}

@end
