//
//  TransportModel.h
//  task1
//
//  Created by Anton Lozovsky on 11/2/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transport.h"

@interface TransportModel : NSObject

+(TransportModel *)getInstance;
-(void)refreshModel;
-(NSArray *)obtainVehicleOrd;
-(NSArray *)obtainVehicleFav;

@end
