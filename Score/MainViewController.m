//
//  MainViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/5.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "MainViewController.h"
#import "ScoreViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Score";
    self.clearsSelectionOnViewWillAppear = YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] init];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Story points";
            break;
        case 1:
            cell.textLabel.text = @"Traffic light";
            break;
        default:
            return nil;
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ScoreViewController *scoreViewController = [[ScoreViewController alloc] init];

    switch (indexPath.row) {
        case 0:
            scoreViewController.scores = @[@"1", @"2", @"3", @"5", @"8", @"13", @"?"];
            break;
        case 1:
            scoreViewController.scores = @[@"#10A959", @"#FFBC35", @"#F3423D"];
            break;
        default:
            return;
    }

    [self.navigationController pushViewController:scoreViewController animated:YES];
}

@end
