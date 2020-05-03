//
//  AddViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/1.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "Masonry.h"

#import "BirdSighting.h"
#import "AddViewController.h"
#import "MasterViewController.h"

@interface AddViewController ()

@property (strong, nonatomic) UITableViewCell *birdNameCell;
@property (strong, nonatomic) UILabel *birdNameLabel;
@property (strong, nonatomic) UITextField *birdNameInput;

@property (strong, nonatomic) UITableViewCell *locationCell;
@property (strong, nonatomic) UILabel *locationLabel;
@property (strong, nonatomic) UITextField *locationInput;

@end

@implementation AddViewController

- (void)loadView {
    [super loadView];

    self.birdNameCell = [[UITableViewCell alloc] init];
    
    self.birdNameLabel = [[UILabel alloc] init];
    self.birdNameLabel.text = @"Bird Name";
    [self.birdNameCell addSubview:self.birdNameLabel];

    [self.birdNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.birdNameCell.mas_leadingMargin);
        make.centerY.equalTo(self.birdNameCell.mas_centerY);
    }];

    [self.birdNameLabel setContentHuggingPriority:UILayoutPriorityRequired
                                          forAxis:UILayoutConstraintAxisHorizontal];

    self.birdNameInput = [[UITextField alloc] init];
    self.birdNameInput.borderStyle = UITextBorderStyleRoundedRect;
    self.birdNameInput.delegate = self;
    [self.birdNameCell addSubview:self.birdNameInput];

    [self.birdNameInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.birdNameLabel.mas_trailing).offset(8);
        make.baseline.equalTo(self.birdNameLabel.mas_baseline);
        make.trailing.equalTo(self.birdNameCell.mas_trailingMargin);
    }];

    self.locationCell = [[UITableViewCell alloc] init];

    self.locationLabel = [[UILabel alloc] init];
    self.locationLabel.text = @"Location";
    [self.locationCell addSubview:self.locationLabel];

    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.locationCell.mas_leadingMargin);
        make.centerY.equalTo(self.locationCell.mas_centerY);
    }];

    [self.locationLabel setContentHuggingPriority:UILayoutPriorityRequired
                                          forAxis:UILayoutConstraintAxisHorizontal];

    self.locationInput = [[UITextField alloc] init];
    self.locationInput.borderStyle = UITextBorderStyleRoundedRect;
    self.locationInput.delegate = self;
    [self.locationCell addSubview:self.locationInput];

    [self.locationInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.locationLabel.mas_trailing).offset(8);
        make.baseline.equalTo(self.locationLabel.mas_baseline);
        make.trailing.equalTo(self.locationCell.mas_trailingMargin);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)done {
    if (self.birdNameInput.text.length && self.locationInput.text.length) {
        NSDate *today = [NSDate date];
        BirdSighting *sighting = [[BirdSighting alloc] initWithName:self.birdNameInput.text location:self.locationInput.text date:today];
        self.doneHandler(sighting);
    }
}

- (void)cancel {
    self.cancelHandler();
}

@end
