//
//  MainViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/1.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (strong, nonatomic) UITableViewCell *birdNameCell;
@property (strong, nonatomic) UILabel *birdNameLabel;
@property (strong, nonatomic) UITextField *birdNameInput;

@property (strong, nonatomic) UITableViewCell *locationCell;
@property (strong, nonatomic) UILabel *locationLabel;
@property (strong, nonatomic) UITextField *locationInput;

@end

@implementation MainViewController

- (void)loadView {
    [super loadView];

    self.birdNameCell = [[UITableViewCell alloc] init];
    
    self.birdNameLabel = [[UILabel alloc] init];
    self.birdNameLabel.text = @"Bird Name";
    self.birdNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.birdNameCell addSubview:self.birdNameLabel];

    [NSLayoutConstraint constraintWithItem:self.birdNameLabel
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.birdNameCell
                                 attribute:NSLayoutAttributeLeadingMargin
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.birdNameLabel
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.birdNameCell
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [self.birdNameLabel setContentHuggingPriority:UILayoutPriorityRequired
                                          forAxis:UILayoutConstraintAxisHorizontal];

    self.birdNameInput = [[UITextField alloc] init];
    self.birdNameInput.borderStyle = UITextBorderStyleRoundedRect;
    self.birdNameInput.translatesAutoresizingMaskIntoConstraints = NO;
    [self.birdNameCell addSubview:self.birdNameInput];

    [NSLayoutConstraint constraintWithItem:self.birdNameInput
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.birdNameLabel
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:8.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.birdNameInput
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.birdNameCell
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.birdNameInput
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.birdNameCell
                                 attribute:NSLayoutAttributeTrailingMargin
                                multiplier:1.0
                                  constant:0.0].active = YES;

    self.locationCell = [[UITableViewCell alloc] init];

    self.locationLabel = [[UILabel alloc] init];
    self.locationLabel.text = @"Location";
    self.locationLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.locationCell addSubview:self.locationLabel];

    [NSLayoutConstraint constraintWithItem:self.locationLabel
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.locationCell
                                 attribute:NSLayoutAttributeLeadingMargin
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.locationLabel
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.locationCell
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [self.locationLabel setContentHuggingPriority:UILayoutPriorityRequired
                                          forAxis:UILayoutConstraintAxisHorizontal];

    self.locationInput = [[UITextField alloc] init];
    self.locationInput.borderStyle = UITextBorderStyleRoundedRect;
    self.locationInput.translatesAutoresizingMaskIntoConstraints = NO;
    [self.locationCell addSubview:self.locationInput];

    [NSLayoutConstraint constraintWithItem:self.locationInput
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.locationLabel
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:8.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.locationInput
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.locationCell
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0.0].active = YES;

    [NSLayoutConstraint constraintWithItem:self.locationInput
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.locationCell
                                 attribute:NSLayoutAttributeTrailingMargin
                                multiplier:1.0
                                  constant:0.0].active = YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
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

@end
