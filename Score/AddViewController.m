//
//  AddViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/1.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "BirdSighting.h"
#import "AddViewController.h"
#import "MasterViewController.h"
#import "AddCell.h"

@interface AddViewController ()

@property (strong, nonatomic) AddCell *birdNameCell;
@property (strong, nonatomic) AddCell *locationCell;

@end

@implementation AddViewController

- (void)loadView {
    [super loadView];

    self.birdNameCell = [[AddCell alloc] initWithLabel:@"Bird Name"];
    self.locationCell = [[AddCell alloc] initWithLabel:@"Location"];
    self.tableView.allowsSelection = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return self.birdNameCell;
        case 1:
            return self.locationCell;
        default:
            return nil;
    }
}

- (void)done {
    if (self.birdNameCell.value.length && self.locationCell.value.length) {
        NSDate *today = [NSDate date];
        BirdSighting *sighting = [[BirdSighting alloc] initWithName:self.birdNameCell.value
                                                           location:self.locationCell.value
                                                               date:today];
        self.doneHandler(sighting);
    }
}

- (void)cancel {
    self.cancelHandler();
}

@end
