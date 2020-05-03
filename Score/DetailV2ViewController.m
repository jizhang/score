//
//  DetailV2ViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/3.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "DetailViewController.h"
#import "BirdSighting.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.sighting.name;
    self.tableView.allowsSelection = NO;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"DetailCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier];
    }

    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Bird Name";
            cell.detailTextLabel.text = self.sighting.name;
            break;
        case 1:
            cell.textLabel.text = @"Location";
            cell.detailTextLabel.text = self.sighting.location;
            break;
        case 2:
            cell.textLabel.text = @"Date";
            cell.detailTextLabel.text = [self formatDate:self.sighting.date];
            break;
        default:
            return nil;
    }

    return cell;
}

- (NSString *)formatDate:(NSDate *)date {
    static NSDateFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    return [formatter stringFromDate:date];
}

@end
