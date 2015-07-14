//
//  VisaBulletinViewController.m
//  Immly
//
//  Created by Navneet Kesher on 7/11/15.
//  Copyright (c) 2015 Joy Frequency LLC. All rights reserved.
//

#import "VisaBulletinViewController.h"
#import "VisaBulletinTableViewCell.h"

@interface VisaBulletinViewController ()

@end

@implementation VisaBulletinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"VisaBulletinTableViewCell" bundle:nil ] forCellReuseIdentifier:@"cell"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        self.parseClassName = @"Bulletin";
        self.pullToRefreshEnabled = YES;
        self.paginationEnabled = YES;
        self.objectsPerPage = 25;
    }
    return self;
}

- (PFQuery *)queryForTable {
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    
    // If no objects are loaded in memory, we look to the cache first to fill the table
    // and then subsequently do a query against the network.
    if (self.objects.count == 0) {
        query.cachePolicy = kPFCachePolicyCacheThenNetwork;
    }
    
    [query orderByDescending:@"BulletinDate"];
    
    return query;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
                        object:(PFObject *)object {
    
    static NSString *cellIdentifier = @"cell";
    
    VisaBulletinTableViewCell *cell = (VisaBulletinTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[VisaBulletinTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell to show todo item with a priority at the bottom
    cell.ebLabel.text = [object objectForKey:@"EB"];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    
    cell.inCutoffDate.text = [formatter stringFromDate:object[@"INCutoffDate"]];
    cell.cnCutoffDate.text = [formatter stringFromDate:object[@"CNCutoffDate"]];
    cell.mxCutoffDate.text = [formatter stringFromDate:object[@"MXCutoffDate"]];
    cell.phCutoffDate.text = [formatter stringFromDate:object[@"PHCutoffDate"]];
    cell.rowCutoffDate.text = [formatter stringFromDate:object[@"ROWCutoffDate"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

@end
