//
//  MasterViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/3.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "BirdSighting.h"
#import "BirdSightingDataController.h"
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "AddViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Bird Sightings";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                           target:self
                                                                                           action:@selector(addSighting)];
    self.clearsSelectionOnViewWillAppear = YES;
    self.dataController = [[BirdSightingDataController alloc] init];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataController.countOfList;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"BirdSightingCell";

    static NSDateFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    BirdSighting *sightingAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    cell.textLabel.text = sightingAtIndex.name;
    cell.detailTextLabel.text = [formatter stringFromDate:sightingAtIndex.date];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BirdSighting *sighting = [self.dataController objectInListAtIndex:indexPath.row];
    DetailViewController *vc = [[DetailViewController alloc] init];
    vc.sighting = sighting;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)addSighting {
    AddViewController *vc = [[AddViewController alloc] init];

    __weak typeof(self) weakSelf = self;
    vc.doneHandler = ^(BirdSighting *sighting){ [weakSelf handleAddSighting:sighting]; };
    vc.cancelHandler = ^{ [weakSelf handleCancel]; };

    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)handleAddSighting:(BirdSighting *)sighting {
    [self.dataController addBirdSightingWithSighting:sighting];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)handleCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
