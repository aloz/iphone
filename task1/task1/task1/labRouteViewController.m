//
//  labRouteViewController.m
//  task1
//
//  Created by Anton Lozovsky on 11/3/13.
//  Copyright (c) 2013 Anton Lozovsky. All rights reserved.
//

#import <AssetsLibrary/AssetsLibrary.h>
#import "labRouteViewController.h"
#import "TransportModel.h"
#import "Vehicle.h"

@interface labRouteViewController ()
    @property(nonatomic,strong) NSArray *vehFav;
    @property(nonatomic,strong) NSArray *vehOrd;
@end


@implementation labRouteViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self setTitle:@"Routes"];
    _vehFav = [[TransportModel getInstance] obtainVehicleFav];
    _vehOrd = [[TransportModel getInstance] obtainVehicleOrd];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSInteger result;
    switch (section) {
        case 0:
            result = [[[TransportModel getInstance] obtainVehicleFav] count];
            break;

        case 1:
            result = [[[TransportModel getInstance] obtainVehicleOrd] count];
            break;
            
        default:
            result = 0;
    }
    return result;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *result;
    switch (section) {
        case 0:
            result = @"My Favourites";
            break;
        case 1:
            result = @"Routes";
            break;
            
        default:
            break;
    }
    return result;
}
 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if(indexPath.section == 0) {
        Vehicle *v = [_vehFav objectAtIndex:indexPath.item];
        UIImageView *star = (UIImageView *)[cell.contentView viewWithTag:1];
        UILabel *lblName = (UILabel *)[cell.contentView viewWithTag:2];
        UILabel *lblPrice = (UILabel *)[cell.contentView viewWithTag:3];
        [star setImage:[UIImage imageNamed:@"star_yellow.png"]];
        [lblName setText:v.Name];
        [lblPrice setText:[v.TicketPrice stringValue]];
    }
    else if(indexPath.section == 1) {
        Vehicle *v = [_vehOrd objectAtIndex:indexPath.item];
        UIImageView *star = (UIImageView *)[cell.contentView viewWithTag:1];
        UILabel *lblName = (UILabel *)[cell.contentView  viewWithTag:2];
        UILabel *lblPrice = (UILabel *)[cell.contentView viewWithTag:3];
        [star setImage:[UIImage imageNamed:@"star_grey.png"]];
        lblName.text = v.Name;
        lblPrice.text = [v.TicketPrice stringValue];
    }

    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
