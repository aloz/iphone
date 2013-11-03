//
//  TransportModel.m
//  task1
//
//  Created by Anton Lozovsky on 11/2/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import "TransportModel.h"


#pragma mark -
#pragma mark Transport Model
#pragma mark -

@interface TransportModel()
    @property(nonatomic, strong) NSMutableArray *AllVehicles;
@end


@implementation TransportModel

static TransportModel *_instance;

+(TransportModel *) getInstance {
    if(_instance == Nil)
        _instance = [[TransportModel alloc] init];
    return _instance;
}

-(id)init {
    self = [super init];
    if(self) {
        _AllVehicles = [[NSMutableArray alloc]init];
        [self refreshModel];
    }
    return self;
}

-(void) refreshModel {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    // Add favorites
    for(int i=0;i<10;i++) {
        Transport *transport = [[Transport alloc]init];
        transport.isFavourite=TRUE;
        transport.Name = [NSString stringWithFormat:@"Route %d", i];
        transport.TicketPrice=[NSNumber numberWithInt:(arc4random() % 2) + 2] ;
        [array addObject:transport];
    }
    
    // Add non-favorites
    for(int i=0;i<10;i++) {
        Transport *transport = [[Transport alloc]init];
        transport.isFavourite=FALSE;
        transport.Name = [NSString stringWithFormat:@"Route %d", i+10];
        transport.TicketPrice=[NSNumber numberWithInt:(arc4random() % 2) + 2] ;
        [array addObject:transport];
    }
    
    [_AllVehicles addObjectsFromArray:array];
}

#pragma mark Obtain Ordinary Vehicles
-(NSArray *)obtainVehicleOrd {
    NSMutableArray *resultTmp=[[NSMutableArray alloc]init];
    Transport *t;
    
    for(int i=0;i<[_AllVehicles count];i++) {
        t = [_AllVehicles objectAtIndex:i];
        if(t.isFavourite) {
            [resultTmp addObject:t];
        }
    }
    
    NSArray *result=[NSArray arrayWithArray:resultTmp];
    return result;
}

#pragma mark Obtain Favourite Vehicles
-(NSArray *)obtainVehicleFav {
    NSMutableArray *resultTmp=[[NSMutableArray alloc]init];
    Transport *t;
    
    for(int i=0;i<[_AllVehicles count];i++) {
        t = [_AllVehicles objectAtIndex:i];
        if(!t.isFavourite) {
            [resultTmp addObject:t];
        }
    }
    
    NSArray *result=[NSArray arrayWithArray:resultTmp];
    return result;
}

@end
